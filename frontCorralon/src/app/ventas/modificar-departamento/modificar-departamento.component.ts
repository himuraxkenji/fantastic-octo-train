import { Departamento } from './../../modelo/Departamento';
import { Component, OnInit } from '@angular/core';
import { VentasService } from 'src/app/service/ventas.service';

@Component({
  selector: 'app-modificar-departamento',
  templateUrl: './modificar-departamento.component.html',
  styleUrls: ['./modificar-departamento.component.css']
})
export class ModificarDepartamentoComponent implements OnInit {
  departamento: Departamento=null;

  constructor(private service: VentasService) { }

  ngOnInit() {
  }

  actualizarDepartamento(departamento: Departamento){
    var guardado = localStorage.getItem('departamento');

    console.log('objetoObtenido: ', JSON.parse(guardado));

    // console.log(localStorage.getItem('guardado'));
// departamento=JSON.parse(departamento);

    // this.service.actualizarDepartamento(departamento)
    // .subscribe(data => {
    //   this.departamento = data;
    //   alert('se actualizo con EXITO');
    //   window.history.back();
    // });
  }
  cancelar(){
    window.history.back();
  }


}
