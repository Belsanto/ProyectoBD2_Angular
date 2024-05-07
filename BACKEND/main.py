from fastapi import Depends, Body, FastAPI, HTTPException
from fastapi.security import HTTPBearer, HTTPAuthorizationCredentials
from fastapi import Path
from jwt import encode as jwt_encode, decode, InvalidTokenError, ExpiredSignatureError
import secrets
import cx_Oracle

# Initialize FastAPI app
app = FastAPI()
app.title = "Examenes (Universidad del Qundío)"
app.version = "0.0.1"

# Security
security = HTTPBearer()

# Database connection
dsn = cx_Oracle.makedsn("localhost", "1521", service_name="ORCL")
connection = cx_Oracle.connect(user="BELSANTO", password="12345")

clave_secreta = secrets.token_hex(16)

# Helper function to get database cursor
def get_cursor():
    return connection.cursor()

# Example endpoint with unique name
@app.get("/", tags=['home'])
def get_status():
    return {"status": "API is running"}

# Endpoint to fetch questions for an exam
@app.get("/preguntas/{id_examen}", tags=['Preguntas del Examen'])
def get_preguntas(id_examen: int):
    with get_cursor() as cursor:
        cursor.execute("""
            SELECT P.*
            FROM "PREGUNTA" P
            JOIN "EXAMEN_PREGUNTA" EP ON P."ID_PREGUNTA" = EP."ID_PREGUNTA"
            WHERE EP."ID_EXAMEN" = :id_examen
        """, id_examen=id_examen)
        result = cursor.fetchall()
        return result

# Endpoint to fetch schedules
@app.get("/horarios", tags=['Horarios disponibles'])
def get_horarios():
    with get_cursor() as cursor:
        cursor.execute("""
            SELECT
                H.*,
                CASE
                    WHEN GH."ID_GRUPO" IS NOT NULL THEN 'SI'
                    ELSE 'NO'
                END AS "GRUPO_ASOCIADO",
                CASE
                    WHEN EH."ID_EXAMEN" IS NOT NULL THEN 'SI'
                    ELSE 'NO'
                END AS "EXAMEN_ASOCIADO"
            FROM
                "HORARIO" H
            LEFT JOIN
                "GRUPO_HORARIO" GH ON H."ID_HORARIO" = GH."ID_HORARIO"
            LEFT JOIN
                "EXAMEN_HORARIO" EH ON H."ID_HORARIO" = EH."ID_HORARIO"
        """)
        result = cursor.fetchall()
        return result

# Endpoint to fetch students for a group
@app.get("/estudiantes/{id_grupo}", tags=['Ver estudiantes por grupo'])
def get_estudiantes(id_grupo: int):
    with get_cursor() as cursor:
        cursor.execute("""
            SELECT E.*
            FROM "ESTUDIANTE" E
            JOIN "ESTUDIANTE_GRUPO" EG ON E."ID_ESTUDIANTE" = EG."ID_ESTUDIANTE"
            WHERE EG."ID_GRUPO" = :id_grupo
        """, id_grupo=id_grupo)
        result = cursor.fetchall()
        return result

# Endpoint to fetch student schedules for a group
@app.get("/estudiantes_horarios/{id_grupo}", tags=['Ver el horario de un grupo'])
def get_estudiantes_horarios(id_grupo: int):
    with get_cursor() as cursor:
        cursor.execute("""
            SELECT
                H.*,
                CASE
                    WHEN GH."ID_GRUPO" IS NOT NULL THEN 'SI'
                    ELSE 'NO'
                END AS "GRUPO_ASOCIADO",
                CASE
                    WHEN EH."ID_EXAMEN" IS NOT NULL THEN 'SI'
                    ELSE 'NO'
                END AS "EXAMEN_ASOCIADO"
            FROM
                "BELSANTO"."HORARIO" H
            LEFT JOIN
                "BELSANTO"."GRUPO_HORARIO" GH ON H."ID_HORARIO" = GH."ID_HORARIO"
            LEFT JOIN
                "BELSANTO"."EXAMEN_HORARIO" EH ON H."ID_HORARIO" = EH."ID_HORARIO"
            WHERE GH."ID_GRUPO" = :id_grupo
        """, id_grupo=id_grupo)
        result = cursor.fetchall()
        return result

@app.get("/preguntas_filtradas/{id_profe}", tags=['Preguntas de un profesor por tema especifico'])
def get_preguntas_filtradas(id_profe: int, tema: str = None):
    if tema is None:
        tema = "No definido"  # Valor predeterminado si no se proporciona un tema en la URL

    with get_cursor() as cursor:
        cursor.execute("""
            SELECT P.ID_PREGUNTA, P.TEXTO, P.OPCIONES, P.RESPUESTAS_CORRECTAS, P.ID_TIPO, P.TEMA,
                CASE
                    WHEN P.PRIVACIDAD = 0 THEN 'PUBLICA'
                    WHEN P.PRIVACIDAD = 1 THEN 'PRIVADA'
                    ELSE 'DESCONOCIDA'
                END AS PRIVACIDAD
            FROM PREGUNTA P
            INNER JOIN EXAMEN_PREGUNTA EP ON P.ID_PREGUNTA = EP.ID_PREGUNTA
            INNER JOIN EXAMEN E ON EP.ID_EXAMEN = E.ID_EXAMEN
            WHERE (P.TEMA = :tema AND P.PRIVACIDAD = 0)
            OR (P.TEMA = :tema AND E.ID_PROFESOR = :id_profe )
            ORDER BY P.TEXTO
        """, tema=tema, id_profe=id_profe)
        result = cursor.fetchall()
        return result
