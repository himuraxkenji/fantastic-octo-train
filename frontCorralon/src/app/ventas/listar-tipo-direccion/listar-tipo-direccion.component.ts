import { TipoDireccion } from './../../modelo/tipoDireccion';
import { Router } from '@angular/router';
import { VentasService } from './../../service/ventas.service';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-listar-tipo-direccion',
  templateUrl: './listar-tipo-direccion.component.html',
  styleUrls: ['./listar-tipo-direccion.component.css']
})
export class ListarTipoDireccionComponent implements OnInit {
  tipoDireccion: TipoDireccion = null;
  tipoDirecciones: TipoDireccion[] = null;
  tipoDireccionFilter: TipoDireccion[] = null;
  busquedaNombre: string = null;

  constructor(private service: VentasService, private router: Router) { }

  ngOnInit() {
  }
  modificarTipoDireccion(tipoDireccion: TipoDireccion) {
    // this.router.navigate(["/ventas/modificar-departamento/" + departamento.id]);
  }

  deshabilitarTipoDireccion(tipoDireccion: TipoDireccion) {
    let resultado: boolean;
    resultado = confirm("¿DESEA ELIMINAR DEPARTAMENTO?");
    if (resultado === true) {
    //   this.service.deshabilitarDepartamento(departamento.id)
    // .subscribe(data => {
    //   window.location.reload();
    // });
    }
  }
  filtrarTipoDireccionNombre(event: any) {
    console.log("filtra nombre");

    if (this.busquedaNombre !== null) {
      this.tipoDireccionFilter = this.tipoDirecciones.filter(item => {
        if (
          item.nombre.toUpperCase().includes(this.busquedaNombre.toUpperCase())
        ) {
          return item;
        }
      });
    } else {
      this.tipoDireccionFilter = this.tipoDirecciones;
    }
  }
}
