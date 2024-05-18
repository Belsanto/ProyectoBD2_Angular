import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class QuestionService {
  private apiUrl = 'http://127.0.0.1:8000/preguntas'; // Reemplaza con la URL de tu API

  constructor(private http: HttpClient) {}

  private getHeaders(): HttpHeaders {
    const token = localStorage.getItem('authToken');
    return new HttpHeaders({
      'Authorization': `Bearer ${token}`
    });
  }

  createQuestion(questionData: any): Observable<any> {
    const headers = this.getHeaders();
    return this.http.post(`${this.apiUrl}/crear`, questionData, { headers });
  }

  updateQuestion(questionId: number, questionData: any): Observable<any> {
    const headers = this.getHeaders();
    return this.http.put(`${this.apiUrl}/actualizar/${questionId}`, questionData, { headers });
  }

  updateQuestionPrivacy(questionId: number, professorId: number, privacy: number): Observable<any> {
    const headers = this.getHeaders();
    return this.http.put(`${this.apiUrl}/actualizar-privacidad/${questionId}`, { id_profesor: professorId, privacidad: privacy }, { headers });
  }

  deleteQuestion(questionId: number): Observable<any> {
    const headers = this.getHeaders();
    return this.http.delete(`${this.apiUrl}/eliminar/${questionId}`, { headers });
  }
}
