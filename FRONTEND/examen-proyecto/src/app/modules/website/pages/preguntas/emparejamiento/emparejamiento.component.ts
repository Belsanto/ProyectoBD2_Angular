import { Component, EventEmitter, Output } from '@angular/core';

@Component({
  selector: 'app-emparejamiento',
  templateUrl: './emparejamiento.component.html',
  styleUrls: ['./emparejamiento.component.css']
})
export class EmparejamientoComponent {
  questionText: string = '';
  pairs: { element1: string, element2: string }[] = [{ element1: '', element2: '' }];
  privacy: boolean = false;

  @Output() questionAdded = new EventEmitter<any>();

  addPair() {
    this.pairs.push({ element1: '', element2: '' });
  }

  removePair(index: number) {
    this.pairs.splice(index, 1);
  }

  addQuestion() {
    const options: string[] = [];
    const correctAnswers: string[] = [];

    for (let i = 0; i < this.pairs.length; i++) {
      options.push(this.pairs[i].element1);
      options.push(this.pairs[i].element2);
      correctAnswers.push(this.pairs[i].element2); // La segunda parte del par se considera la respuesta correcta
    }

    const questionData = {
      texto: this.questionText,
      opciones: options,
      respuestas_correctas: correctAnswers,
      id_tipo: 2, // ID correspondiente al tipo de pregunta de emparejamiento
      tema: '', // Añade el tema correspondiente
      privacidad: this.privacy ? 1 : 0 // Convertir la privacidad booleana a un número
    };

    this.questionAdded.emit(questionData);

    // Limpiar los campos después de agregar la pregunta
    this.questionText = '';
    this.pairs = [{ element1: '', element2: '' }];
  }
}
