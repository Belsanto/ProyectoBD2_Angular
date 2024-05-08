import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class ExamService {
  private apiUrl = 'http://127.0.0.1:8000/examen'; // Reemplaza con la URL de tu API

  constructor(private http: HttpClient) {}

  createExam(examData: any): Observable<any> {
    return this.http.post(`${this.apiUrl}/crear`, examData);
  }

  updateExam(examData: any): Observable<any> {
    return this.http.put(`${this.apiUrl}/actualizar`, examData);
  }

  deleteExam(examId: number): Observable<any> {
    return this.http.delete(`${this.apiUrl}/eliminar`, { body: { id: examId } });
  }
}
