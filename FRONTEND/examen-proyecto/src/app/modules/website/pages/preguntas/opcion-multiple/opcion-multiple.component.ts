import { Component, EventEmitter, Output } from '@angular/core';

@Component({
  selector: 'app-opcion-multiple',
  templateUrl: './opcion-multiple.component.html',
  styleUrls: ['./opcion-multiple.component.css']
})
export class OpcionMultipleComponent {
  questionText: string = '';
  options: string[] = [''];
  correctAnswers: boolean[] = [false];
  correctAnswersString: string[] = []; // Nuevo arreglo para almacenar las respuestas correctas como cadenas de texto
  privacy: boolean = false;

  @Output() questionAdded = new EventEmitter<any>();

  addOption() {
    this.options.push('');
    this.correctAnswers.push(false);
  }

  removeOption(index: number) {
    this.options.splice(index, 1);
    this.correctAnswers.splice(index, 1);
  }

  addQuestion() {
    const selectedOptions: string[] = [];
    for (let i = 0; i < this.options.length; i++) {
      if (this.correctAnswers[i]) {
        selectedOptions.push(this.options[i]);
        this.correctAnswersString.push(this.options[i]); // Agregar la respuesta correcta al nuevo arreglo
      }
    }

    const questionData = {
      texto: this.questionText,
      opciones: this.options,
      respuestas_correctas: this.correctAnswersString, // Usar el nuevo arreglo de respuestas correctas
      id_tipo: 1,
      tema: '',
      privacidad: this.privacy ? 1 : 0
    };

    this.questionAdded.emit(questionData);

    // Limpiar los campos después de agregar la pregunta
    this.questionText = '';
    this.options = [''];
    this.correctAnswers = [false];
    this.correctAnswersString = []; // Limpiar el nuevo arreglo de respuestas correctas
  }
}
