import { Component, EventEmitter, Output } from '@angular/core';

@Component({
  selector: 'app-verdadero-falso',
  templateUrl: './verdadero-falso.component.html',
  styleUrls: ['./verdadero-falso.component.css']
})
export class VerdaderoFalsoComponent {
  questionText: string = '';
  isTrue: boolean = false;
  privacy: boolean = false;

  @Output() questionAdded = new EventEmitter<any>();

  addQuestion() {
    const questionData = {
      texto: this.questionText,
      opciones: ['Verdadero', 'Falso'], // Dos opciones: Verdadero y Falso
      respuestas_correctas: [this.isTrue ? 'Verdadero' : 'Falso'], // Respuesta correcta basada en el estado de isTrue
      id_tipo: 4, // ID correspondiente al tipo de pregunta Verdadero/Falso
      tema: '', // Añade el tema correspondiente
      privacidad: this.privacy ? 1 : 0 // Convertir la privacidad booleana a un número
    };

    this.questionAdded.emit(questionData);

    // Limpiar los campos después de agregar la pregunta
    this.questionText = '';
    this.isTrue = false;
  }
}
