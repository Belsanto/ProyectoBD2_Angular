import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { AuthService } from 'src/app/services/auth.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent {
  id: number;
  password: string;
  is_professor: boolean; // Cambiado a boolean

  constructor(private authService: AuthService, private router: Router) {
    this.id = 0;
    this.password = '';
    this.is_professor = false; // Inicializado como false
  }

  login() {
    this.authService.login({ id: this.id, password: this.password, is_professor: this.is_professor ? 1 : 0 }).subscribe(success => {
      if (success) {
        this.router.navigate(['/home']);
      } else {
        alert('Usuario o contraseña incorrectos');
      }
    });
  }
}
