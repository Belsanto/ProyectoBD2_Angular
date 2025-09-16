import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable, of } from 'rxjs';
import { catchError, map } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class AuthService {
  private apiUrl = 'https://8f5d-181-53-99-60.ngrok-free.app'; // backend URL

  constructor(private http: HttpClient) {}

  login(credentials: { id: number, password: string, is_professor: number }): Observable<boolean> {
    // 🔹 DEMO LOGIN: admin / admin
    if (credentials.id.toString() === 'admin' && credentials.password === 'admin') {
      const fakePayload = {
        is_professor: credentials.is_professor, // keep same logic (0 = student, 1 = professor)
        exp: Math.floor(Date.now() / 1000) + (60 * 60) // expires in 1 hour
      };

      const base64Payload = btoa(JSON.stringify(fakePayload));
      const fakeToken = `fakeHeader.${base64Payload}.fakeSignature`;

      localStorage.setItem('authToken', fakeToken);
      return of(true);
    }

    // 🔹 fallback: call real backend
    return this.http.post<any>(`${this.apiUrl}/login`, credentials).pipe(
      map(response => {
        localStorage.setItem('authToken', response.token);
        return true;
      }),
      catchError(() => of(false))
    );
  }

  logout(): void {
    localStorage.removeItem('authToken');
  }

  isAuthenticated(): boolean {
    return !!localStorage.getItem('authToken');
  }

  getUserType(): number | null {
    const token = localStorage.getItem('authToken');
    if (token) {
      const tokenPayload = JSON.parse(atob(token.split('.')[1]));
      return tokenPayload.is_professor;
    }
    return null;
  }
}
