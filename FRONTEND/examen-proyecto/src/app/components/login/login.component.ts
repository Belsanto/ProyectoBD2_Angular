import { Component } from '@angular/core';
import { AuthService } from '../../services/auth.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent {
  constructor(private authService: AuthService) {}

  login() {
    this.authService.login({ id: 123, password: 'password', is_professor: 1 }).subscribe(success => {
      if (success) {
        // Redirigir al usuario a la página de inicio si la autenticación fue exitosa
        // Puedes usar el Router de Angular para hacer esto: this.router.navigate(['/home']);
      } else {
        // Mostrar un mensaje de error al usuario
      }
    });
  }
}
