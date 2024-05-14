import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class ExamenService {
  private apiUrl = 'http://localhost:8000'; // Reemplaza con la URL de tu API

  constructor(private http: HttpClient) {}

  crearExamen(examenData: any): Observable<any> {
    return this.http.post<any>(`${this.apiUrl}/examen/crear`, examenData);
  }

  actualizarExamen(examenData: any): Observable<any> {
    return this.http.put<any>(`${this.apiUrl}/examen/actualizar`, examenData);
  }

  eliminarExamen(idExamen: number): Observable<any> {
    return this.http.delete<any>(`${this.apiUrl}/examen/eliminar`, { body: { id: idExamen } });
  }
}
