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
import { NuevoExamenComponent } from './pages/nuevo-examen/nuevo-examen.component';
import { CompletarComponent } from './pages/preguntas/completar/completar.component';
import { OpcionMultipleComponent } from './pages/preguntas/opcion-multiple/opcion-multiple.component';
import { EmparejamientoComponent } from './pages/preguntas/emparejamiento/emparejamiento.component';
import { VerdaderoFalsoComponent } from './pages/preguntas/verdadero-falso/verdadero-falso.component';
import { OrdenarConceptosComponent } from './pages/preguntas/ordenar-conceptos/ordenar-conceptos.component';


@NgModule({
  declarations: [
    LayoutComponent,
    NavComponent,
    LoginComponent,
    HorariosComponent,
    HomeComponent,
    EstudianteComponent,
    NuevoExamenComponent,
    CompletarComponent,
    OpcionMultipleComponent,
    EmparejamientoComponent,
    VerdaderoFalsoComponent,
    OrdenarConceptosComponent
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
