import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable, of } from 'rxjs';
import { catchError, map } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class AuthService {
  private apiUrl = 'http://127.0.0.1:8000/auth'; // Reemplaza con la URL de tu API

  constructor(private http: HttpClient) {}

  login(credentials: { id: number, password: string, is_professor: number }): Observable<boolean> {
    return this.http.post<any>(`${this.apiUrl}/login`, credentials)
      .pipe(
        map(response => {
          // Almacenar el token de autenticación en el almacenamiento local
          localStorage.setItem('token', response.token);
          return true;
        }),
        catchError(error => {
          console.error('Error de autenticación:', error);
          return of(false);
        })
      );
  }

  logout(): void {
    // Eliminar el token de autenticación del almacenamiento local
    localStorage.removeItem('token');
  }

  isAuthenticated(): boolean {
    // Verificar si el usuario está autenticado comprobando si existe el token en el almacenamiento local
    return !!localStorage.getItem('token');
  }
}
