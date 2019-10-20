import { VentasService } from 'src/app/service/ventas.service';
import { TipoDireccion } from '../../modelo/tipoDireccion';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-agregar-tipo-direccion',
  templateUrl: './agregar-tipo-direccion.component.html',
  styleUrls: ['./agregar-tipo-direccion.component.css']
})
export class AgregarTipoDireccionComponent implements OnInit {
  tipoDireccion: TipoDireccion= new TipoDireccion();
  response: Response;

  constructor(private service: VentasService) { }

  ngOnInit() {
  }
  guardarTipoDireccion(tipoDireccion: TipoDireccion){
    // console.log(departamento);
    // this.departamento.habilitado = 1;
    // this.departamento.id = null;
    // this.ventasService.guardarDepartamento(this.departamento)
    //  .subscribe(data => {
    //       this.departamento = data; alert( 'se guardo un nuevo departamento' ); window.history.back();
    //    } );
    }
  cancelar() {
    window.history.back();
  }

}
