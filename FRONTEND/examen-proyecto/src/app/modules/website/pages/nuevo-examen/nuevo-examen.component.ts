import { Component, OnInit } from '@angular/core';
import { Question } from 'src/app/models/question';  // Importa el modelo de pregunta

@Component({
  selector: 'app-nuevo-examen',
  templateUrl: './nuevo-examen.component.html',
  styleUrls: ['./nuevo-examen.component.css']
})
export class NuevoExamenComponent implements OnInit {
  questions: Question[] = []; // Arreglo para almacenar las preguntas

  constructor() { }

  ngOnInit(): void {
  }

  addQuestion(questionData: Question) {
    this.questions.push(questionData);
  }
}
