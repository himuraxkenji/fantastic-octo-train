import { Response } from '../../modelo/Response';
import { Component, OnInit } from '@angular/core';
import { Departamento } from '../../modelo/Departamento';
import { VentasService } from '../../service/ventas.service';
import { Router } from '@angular/router';
import { NgForm } from '@angular/forms';


@Component({
  selector: 'app-agregar-departamento',
  templateUrl: './agregar-departamento.component.html',
  styleUrls: ['./agregar-departamento.component.css']
})
export class AgregarDepartamentoComponent implements OnInit {

  departamento: Departamento = new Departamento();
  response: Response;

  constructor(private ventasService: VentasService) {

   }

  ngOnInit() {
     }
guardarDepartamento(departamento: Departamento){
  console.log(departamento);
  this.departamento.habilitado = 1;
  this.departamento.id = null;
  this.ventasService.guardarDepartamento(this.departamento)
   .subscribe(data => {
        this.departamento = data; alert( 'se guardo un nuevo departamento' ); window.history.back();
     } );
  }
cancelar() {
  window.history.back();
}

}
