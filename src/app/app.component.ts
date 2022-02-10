import { Component } from '@angular/core';
import { Environment } from './environment.interface';

declare let __config: Environment;

@Component({
  selector: 'app-root',
  template: '<div>{{apiUrl}}</div>',
  styleUrls: ['./app.component.scss'],
})
export class AppComponent {
  apiUrl: string = __config.apiUrl;
}

