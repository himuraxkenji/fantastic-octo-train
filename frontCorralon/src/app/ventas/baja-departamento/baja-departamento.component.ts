import { Component, OnInit, Input } from '@angular/core';
import { Departamento } from '../../modelo/Departamento';
import { ActivatedRoute } from '@angular/router';
@Component({
  selector: 'app-baja-departamento',
  templateUrl: './baja-departamento.component.html',
  styleUrls: ['./baja-departamento.component.css']
})
export class BajaDepartamentoComponent implements OnInit {
  
  departamento:Departamento;

  constructor(
    private _route: ActivatedRoute) {}
  

  ngOnInit() {
    this._route.params.subscribe(params =>{
      this.departamento = params as Departamento;      
    })
    console.log(this.departamento);
  }

}
