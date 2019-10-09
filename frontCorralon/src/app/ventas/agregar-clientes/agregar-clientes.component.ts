import { Component, OnInit } from '@angular/core';
import { VentasService } from '../../service/ventas.service';
import { Departamento } from '../../modelo/Departamento';

@Component({
  selector: 'app-agregar-clientes',
  templateUrl: './agregar-clientes.component.html',
  styleUrls: ['./agregar-clientes.component.css']
})
export class AgregarClientesComponent implements OnInit {

  departamento:Departamento;

  constructor(private service:VentasService) { 

  }

  ngOnInit() {
  }



}
