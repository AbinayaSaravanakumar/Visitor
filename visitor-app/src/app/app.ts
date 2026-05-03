import { Component } from '@angular/core';
import { VisitorComponent } from './visitor/visitor';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [VisitorComponent],    
  templateUrl: './app.html',
  styleUrl: './app.css'
})
export class AppComponent {
}