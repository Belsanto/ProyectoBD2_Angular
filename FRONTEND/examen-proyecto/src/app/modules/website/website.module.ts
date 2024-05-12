import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { WebsiteRoutingModule } from './website-routing.module';
import { HomeComponent } from './pages/home/home.component';
import { NavComponent } from './components/nav/nav.component';
import { HorariosComponent } from './pages/horarios/horarios.component';
import { LoginComponent } from './pages/login/login.component';
import { LayoutComponent } from './components/layout/layout.component';
import { SharedModule } from '../shared/shared.module';
import { QuicklinkModule } from 'ngx-quicklink';
import { FormsModule } from '@angular/forms';
import { EstudianteComponent } from './pages/estudiante/estudiante.component';


@NgModule({
  declarations: [
    LayoutComponent,
    NavComponent,
    LoginComponent,
    HorariosComponent,
    HomeComponent,
    EstudianteComponent
  ],
  imports: [
    CommonModule,
    WebsiteRoutingModule,
    SharedModule,
    FormsModule,
    QuicklinkModule
  ]
})
export class WebsiteModule { }
