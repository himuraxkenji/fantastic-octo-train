import { VentasRoutingModule } from './ventas-routing.module';
import { Component } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-ventas-component',
  templateUrl: './ventas.component.html',
  styleUrls: ['./ventas.component.css']
})

export class VentasComponent {

  constructor(private router: Router) {}

  private route = VentasRoutingModule;

  clientes() {
    this.router.navigate(['listar-cliente']);
  }

  departamentos() {
    this.router.navigate(['listar-departamentos']);
  }
  distritos() {
    this.router.navigate(['listar-distritos']);
  }
  direcciones() {
    this.router.navigate(['listar-direccion']);
  }



}
