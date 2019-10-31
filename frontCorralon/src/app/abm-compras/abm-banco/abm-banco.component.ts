import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-abm-banco',
  templateUrl: './abm-banco.component.html',
  styleUrls: ['./abm-banco.component.css']
})
export class AbmBancoComponent implements OnInit {
  // departamento: Departamento = null;
  // departamentos: Departamento[] = null;
  // departamentosFilter: Departamento[] = null;
  busquedaNombre: string = null;
  busqueda: string = null;
  constructor() { }

  ngOnInit() {
  }

}
