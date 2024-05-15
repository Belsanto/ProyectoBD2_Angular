import { Component, EventEmitter, Output } from '@angular/core';

@Component({
  selector: 'app-ordenar-conceptos',
  templateUrl: './ordenar-conceptos.component.html',
  styleUrls: ['./ordenar-conceptos.component.css']
})
export class OrdenarConceptosComponent {
  concepts: string[] = ['']; // Arreglo para almacenar los conceptos ingresados
  privacy: boolean = false;

  @Output() questionAdded = new EventEmitter<any>();

  addConcept() {
    this.concepts.push('');
  }

  removeConcept(index: number) {
    this.concepts.splice(index, 1);
  }

  addQuestion() {
    const questionData = {
      texto: 'Ordenar Conceptos', // Texto de la pregunta (podría ser personalizable)
      opciones: this.concepts, // Los conceptos ingresados serán las opciones
      respuestas_correctas: this.concepts.slice(), // Las respuestas correctas serán los conceptos ordenados
      id_tipo: 1, // ID del tipo de pregunta
      tema: '', // Tema de la pregunta
      privacidad: this.privacy ? 1 : 0 // Nivel de privacidad
    };

    this.questionAdded.emit(questionData);

    // Limpiar los campos después de agregar la pregunta
    this.concepts = [''];
  }
}
