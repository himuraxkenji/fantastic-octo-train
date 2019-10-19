import { VentasService } from 'src/app/service/ventas.service';
import { TipoDireccion } from './../../modelo/tipoDireccion';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-agregar-tipo-doreccion',
  templateUrl: './agregar-tipo-doreccion.component.html',
  styleUrls: ['./agregar-tipo-doreccion.component.css']
})
export class AgregarTipoDoreccionComponent implements OnInit {
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
