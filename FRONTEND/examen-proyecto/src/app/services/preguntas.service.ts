import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class QuestionService {
  private apiUrl = 'http://127.0.0.1:8000/preguntas'; // Reemplaza con la URL de tu API

  constructor(private http: HttpClient) {}

  createQuestion(questionData: any): Observable<any> {
    return this.http.post(`${this.apiUrl}/crear`, questionData);
  }

  updateQuestion(questionId: number, questionData: any): Observable<any> {
    return this.http.put(`${this.apiUrl}/actualizar/${questionId}`, questionData);
  }

  updateQuestionPrivacy(questionId: number, professorId: number, privacy: number): Observable<any> {
    return this.http.put(`${this.apiUrl}/actualizar-privacidad/${questionId}`, { id_profesor: professorId, privacidad: privacy });
  }

  deleteQuestion(questionId: number): Observable<any> {
    return this.http.delete(`${this.apiUrl}/eliminar/${questionId}`);
  }
}
