import { Component, OnInit } from '@angular/core';
import { Question } from 'src/app/models/question';  // Importa el modelo de pregunta

@Component({
  selector: 'app-nuevo-examen',
  templateUrl: './nuevo-examen.component.html',
  styleUrls: ['./nuevo-examen.component.css']
})
export class NuevoExamenComponent implements OnInit {
  questions: Question[] = []; // Arreglo para almacenar las preguntas
  tituloCuestionario: string = '';
  descripcionCuestionario: string = '';
  categoriaCuestionario: string = '';
  tipoOrden: string = ''; // En orden o Aleatorio
  idPregunta_Actual: number = 0;
  constructor() { }

  ngOnInit(): void {
  }

  addQuestion(questionData: Question) {
    // Generar un ID único para la pregunta
    questionData.id_pregunta = this.generateUniqueId();
    this.questions.push(questionData);
  }

  guardarExamen() {
    // Limpia los campos después de guardar el examen
    this.tituloCuestionario = '';
    this.descripcionCuestionario = '';
    this.categoriaCuestionario = '';
    this.tipoOrden = '';
    this.questions = [];
  }

  eliminarPregunta(id: string) {
    // Buscar la pregunta por su ID y eliminarla
    this.questions = this.questions.filter(question => (""+question.id_pregunta) !== id);
  }

  // Generar un ID único para las preguntas
  private generateUniqueId(): number {
    this.idPregunta_Actual +=1;
    return this.idPregunta_Actual;
  }
}
