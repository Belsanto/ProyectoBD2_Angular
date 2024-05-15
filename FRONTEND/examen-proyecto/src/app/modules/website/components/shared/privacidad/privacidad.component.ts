// privacidad.component.ts
import { Component, Input, Output, EventEmitter } from '@angular/core';

@Component({
  selector: 'app-privacidad',
  templateUrl: './privacidad.component.html',
  styleUrls: ['./privacidad.component.css']
})
export class PrivacidadComponent {
  @Input() privacy: boolean = false;
  @Output() privacyChange = new EventEmitter<boolean>();

  togglePrivacy() {
    this.privacy = !this.privacy;
    this.privacyChange.emit(this.privacy);
  }
}
