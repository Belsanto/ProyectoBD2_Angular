import { Component, EventEmitter, Output } from '@angular/core';

@Component({
  selector: 'app-completar',
  templateUrl: './completar.component.html',
  styleUrls: ['./completar.component.css']
})
export class CompletarComponent {
  questionText: string = '';
  answerText: string = '';
  privacy: boolean = false;

  @Output() questionAdded = new EventEmitter<any>();

  addQuestion() {
    const questionData = {
      texto: this.questionText,
      opciones: [this.answerText], // Solo una opción para la respuesta
      respuestas_correctas: [this.answerText], // Respuesta correcta igual a la opción
      id_tipo: 3, // ID correspondiente al tipo de pregunta de completar
      tema: '', // Añade el tema correspondiente
      privacidad: this.privacy ? 1 : 0 // Convertir la privacidad booleana a un número
    };

    this.questionAdded.emit(questionData);

    // Limpiar los campos después de agregar la pregunta
    this.questionText = '';
    this.answerText = '';
  }
}
