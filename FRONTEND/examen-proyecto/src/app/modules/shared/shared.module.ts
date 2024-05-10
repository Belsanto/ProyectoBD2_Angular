import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { TimeAgoPipe } from './pipes/time-ago.pipe';
import { ImgComponent } from './components/img/img.component';
import { RouterModule } from '@angular/router';
import { ShortDescriptionPipe } from './pipes/short-description.pipe';
import { ShortAuthorPipe } from './pipes/short-author.pipe';



@NgModule({
  declarations: [
    ImgComponent,
    TimeAgoPipe,
    ShortDescriptionPipe,
    ShortAuthorPipe
  ],
  imports: [
    CommonModule,
    RouterModule
  ],
  exports: [
    ImgComponent,
    TimeAgoPipe,
    ShortDescriptionPipe,
    ShortAuthorPipe
  ]
})
export class SharedModule { }
