import { Component, OnInit } from '@angular/core';
import { HorariosService } from 'src/app/services/horarios.service';

@Component({
  selector: 'app-horarios',
  templateUrl: './horarios.component.html',
  styleUrls: ['./horarios.component.css']
})
export class HorariosComponent implements OnInit {
  horarios: any[] = [];
  semestres: any[] = [];
  lunes: any[] = [];
  martes: any[] = [];
  miercoles: any[] = [];
  jueves: any[] = [];
  viernes: any[] = [];

  constructor(private horariosService: HorariosService) {
    this.semestres = []; // Inicializar semestres aquí
  }
  ngOnInit(): void {
    this.fetchSemestres();
  }

  fetchSemestres(): void {
    this.horariosService.getSemestres().subscribe(
      (data: any[]) => {
        this.semestres = data;
        // Después de obtener los semestres, obtén los horarios utilizando el primer semestre
        if (this.semestres.length > 0) {
          const primerSemestre = this.semestres[0][0]; // Accede al primer elemento del primer arreglo
          this.fetchHorarios(primerSemestre);
        } else {
          console.error('No se encontraron semestres.');
        }
      },
      (error) => {
        console.error('Error fetching semestres:', error);
      }
    );
  }

  fetchHorarios(semestre: string): void {
    this.horariosService.getHorarios(1, semestre).subscribe(
      (data: any[]) => {
        this.horarios = data;
        this.organizarHorariosPorDia();
      },
      (error) => {
        console.error('Error fetching horarios:', error);
      }
    );
  }

  organizarHorariosPorDia(): void {
    this.lunes = this.horarios.filter(horario => horario[1] === 'Lunes');
    this.martes = this.horarios.filter(horario => horario[1] === 'Martes');
    this.miercoles = this.horarios.filter(horario => horario[1] === 'Miércoles');
    this.jueves = this.horarios.filter(horario => horario[1] === 'Jueves');
    this.viernes = this.horarios.filter(horario => horario[1] === 'Viernes');
  }

  onSemestreSelect(semestre: string): void {
    this.fetchHorarios(semestre);
  }

  getRandomColor(): string {
    // Generar un color hexadecimal aleatorio
    return '#' + Math.floor(Math.random() * 16777215).toString(16);
  }
}
