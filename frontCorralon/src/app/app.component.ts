import { Router } from '@angular/router';
import { Component } from '@angular/core';
@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {

  title = 'CORRALON';
  constructor(private router: Router) {}

  ventas() {
    this.router.navigate(['ventas']);
  }

  compras() {
    this.router.navigate(['navbar-compras']);
  }
  seguridad() {
    this.router.navigate(['navbar-seguridad']);
  }
  logistica() {
    this.router.navigate(['navbar-logistica']);
  }
  reportes() {
    this.router.navigate(['navbar-reportes']);
  }

}
