import { Component, OnInit } from '@angular/core';
import { Departamento } from '../../modelo/Departamento';

@Component({
  selector: 'app-listar-departamento',
  templateUrl: './listar-departamento.component.html',
  styleUrls: ['./listar-departamento.component.css']
})
export class ListarDepartamentoComponent implements OnInit {

  departamentos:Departamento[] = [
    {
      id:1,
      nombre:"CHILECITO",
      abreviatura:"CHI",
      habilitado:1
    },
    {
      id:2,
      nombre:"FAMATINA",
      abreviatura:"FMT",
      habilitado:1
    }
  ];

  constructor() { }

  ngOnInit() {
  }

}
