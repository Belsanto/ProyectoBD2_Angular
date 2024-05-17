import { Question } from "./question";

export class Exam {
  idExamen?: string; // ID del examen (opcional)
  nombre: string;
  descripcion: string;
  cantidadDePreguntas: number;
  tiempoLimite: number;
  idCurso: string;
  orden: string;
  preguntas: Question[]; // Arreglo de preguntas

  constructor(
    nombre: string,
    descripcion: string,
    cantidadDePreguntas: number,
    tiempoLimite: number,
    idCurso: string,
    idProfesor: string,
    orden: string,
    preguntas: Question[] = [], // Inicializar preguntas como un arreglo vacío si no se proporciona
    idExamen?: string
  ) {
    this.idExamen = idExamen;
    this.nombre = nombre;
    this.descripcion = descripcion;
    this.cantidadDePreguntas = cantidadDePreguntas;
    this.tiempoLimite = tiempoLimite;
    this.idCurso = idCurso;
    this.orden = orden;
    this.preguntas = preguntas;
  }
}
