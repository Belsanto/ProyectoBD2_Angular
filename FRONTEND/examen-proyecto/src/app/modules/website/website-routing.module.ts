import { RouterModule, Routes } from '@angular/router';
import { NgModule } from '@angular/core';
import { HomeComponent } from './pages/home/home.component';
import { HorariosComponent } from './pages/horarios/horarios.component';
import { LoginComponent } from './pages/login/login.component';
import { LayoutComponent } from './components/layout/layout.component';
import { AuthGuard } from 'src/app/guards/auth.guard';
import { ProfessorGuard } from 'src/app/guards/professor.guard'; // Importa el nuevo guardia
import { EstudianteComponent } from './pages/estudiante/estudiante.component';
import { StudentGuard } from 'src/app/guards/student.guard';
import { LoginGuard } from 'src/app/guards/login-guard.guard';
import { NuevoExamenComponent } from './pages/nuevo-examen/nuevo-examen.component';

const routes: Routes = [
  {
    path: '',
    component: LayoutComponent,
    children: [
      {
        path: '',
        redirectTo: '/home',
        pathMatch: 'full'
      },
      {
        path: 'login',
        component: LoginComponent,
        canActivate: [LoginGuard]
      },
      {
        path: 'home',
        component: HomeComponent,
        canActivate: [ProfessorGuard]
      },
      {
        path: 'new-exam',
        component: NuevoExamenComponent,
        canActivate: [ProfessorGuard]
      },
      {
        path: 'horarios',
        component: HorariosComponent,
        canActivate: [ProfessorGuard]
      },
      {
        path: 'estudiante',
        component: EstudianteComponent,
        canActivate: [StudentGuard]
      },
      // Agregar más rutas según sea necesario
    ]
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class WebsiteRoutingModule { }
