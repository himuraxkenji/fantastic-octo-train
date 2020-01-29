import { Proveedor } from "./../../modelo/Proveedor";
import { element } from "protractor";
import { MovimientoArticuloDTO } from "./../../modelo/MovimientoArticuloDTO";
import { Articulo } from "./../../modelo/Articulo";
import { Router } from "@angular/router";
import { AbmComprasService } from "src/app/service/abm-compras.service";
import { ComprasService } from "./../../service/compras.service";
import { Pedido } from "./../../modelo/Pedido";
import { Component, OnInit } from "@angular/core";

@Component({
  selector: "app-agregar-pedido",
  templateUrl: "./agregar-pedido.component.html",
  styleUrls: ["./agregar-pedido.component.css"]
})
export class AgregarPedidoComponent implements OnInit {
  pedido: Pedido = new Pedido();

  articulos: Articulo[] = [];

  movimientoArticuloDTO: MovimientoArticuloDTO = new MovimientoArticuloDTO();
  movimientoArticulosDTO: MovimientoArticuloDTO[] = [];

  articulosFilter: Articulo[] = null;
  stockArticulo: number[] = [];
  proveedores: Proveedor[] = [];
  razonSocial: string;

  constructor(private comprasService: ComprasService) {}

  async ngOnInit() {
    await this.fetchEvent2().then(() => {
      this.articulos.forEach((a, index) => {
        this.movimientoArticulosDTO.push(new MovimientoArticuloDTO());
        this.movimientoArticulosDTO[index].movimiento = null;
      });
    });
    this.fetchEvent().then(() => {});
    this.listaProveedor();
  }

  guardarPedido(pedido: Pedido) {
    this.pedido.id = null;
    this.pedido.nombre = pedido.nombre.toUpperCase();
    let fechaString = this.jsonStringDate(this.pedido.fecha);
    let fechaCorrecta = new Date(fechaString);
    fechaCorrecta.setMinutes(
      fechaCorrecta.getMinutes() + fechaCorrecta.getTimezoneOffset()
    );
    this.pedido.fecha = fechaCorrecta;
    this.pedido.descripcion = pedido.descripcion.toUpperCase();

    this.comprasService.guardarPedidos(this.pedido).then(data => {
      console.log(data);

      this.pedido = data.data;

      //       El this.encuestaForm.controls['fechaDesde'].value reemplazalo por lo del ng model tuyo

      // let dateFrom  = new Date(this.encuestaForm.controls['fechaDesde'].value);
      // dateFrom.setMinutes(dateFrom.getMinutes() + dateFrom.getTimezoneOffset());

      this.movimientoArticulosDTO.forEach((element, index) => {
        if (element.movimiento !== null) {
          this.movimientoArticuloDTO.id = null;
          let fechaString = this.jsonStringDate(this.pedido.fecha);
          let fechaCorrecta = new Date(fechaString);
          fechaCorrecta.setMinutes(
            fechaCorrecta.getMinutes() + fechaCorrecta.getTimezoneOffset()
          );

          this.movimientoArticuloDTO.fecha = fechaCorrecta;

          this.movimientoArticuloDTO.articuloId = this.articulos[index].id;
          this.movimientoArticuloDTO.movimiento = this.movimientoArticulosDTO[
            index
          ].movimiento;
          this.movimientoArticuloDTO.pedidoId = data.data.id;

          console.log(this.movimientoArticuloDTO);

          console.log("muetra fecha");
          console.log(this.movimientoArticuloDTO.fecha);
          console.log('fecha correcta');
          console.log(fechaCorrecta);



          this.comprasService
            .guardarMovimiento(this.movimientoArticuloDTO)
            .subscribe(resp => {
              console.log("entre :V");
            });
        }
      });

      // }
    });

    alert("SE GUARDO UN NUEVO PEDIDO");
    window.history.back();
    // for (let index = 0; index < this.movimientoArticulosDTO.length; index++) {
    //   const element = array[index];
  }
  listaProveedor() {
    this.comprasService.listarProveedoresHabilitados().subscribe(data => {
      this.proveedores = data.data;
      this.razonSocial = this.proveedores[0].razonSocial;
    });
  }
  fetchEvent2() {
    return this.comprasService
      .listarArticuloHabilitados()
      .toPromise()
      .then(data => {
        this.articulos = data.data;
        this.articulosFilter = this.articulos;
      });
  }
  fetchEvent() {
    return this.comprasService
      .listarStockArticulo()
      .toPromise()
      .then(data => {
        this.articulos.forEach((a, index) => {
          // console.log(index);
          // console.log(a.id);
          this.stockArticulo.push(data.data[a.id]);
        });
      });
  }
  volverAtras() {
    window.history.back();
  }

  listarFiltro() {
    console.log(this.razonSocial);
    this.articulosFilter = [];
    this.articulos.forEach(element => {
      element.proveedorId.razonSocial === this.razonSocial
        ? this.articulosFilter.push(element)
        : false;
    });
  }
  jsonStringDate(jdate): string {
    if (jdate != null) {
      const resp = new Date(jdate);
      return resp.toISOString().substring(0, 10);
    }
    return "";
  }
}
