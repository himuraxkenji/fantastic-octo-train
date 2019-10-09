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

  departamento:Departamento = null;

  constructor(private ventasService:VentasService) {

   }

  ngOnInit() {
     }

  onSubmit(departamento:NgForm){
    this.ventasService.guardarDepartamento(this.departamento).subscribe(
      data=> {
        console.log("Departamento");
      console.log(departamento);

        alert('se guardo un nuevo distrto');
        window.history.back();
       } );
  }
  guardarDepartamento(){

  }
cancelar(){
  window.history.back();
}

}
