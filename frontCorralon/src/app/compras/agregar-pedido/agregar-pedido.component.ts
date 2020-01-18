import { element } from 'protractor';
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
  constructor(private comprasService: ComprasService) {}

  async ngOnInit() {
    await this.fetchEvent2().then(() => {
      this.articulos.forEach( (a, index )=> {
        this.movimientoArticulosDTO.push(new MovimientoArticuloDTO());
        this.movimientoArticulosDTO[index].movimiento = null;
      })
    });
    this.fetchEvent().then(() => {});
  }

   guardarPedido(pedido: Pedido) {
    this.pedido.id = null;
    this.pedido.nombre = pedido.nombre.toUpperCase();
    this.pedido.fecha = pedido.fecha;
    this.pedido.descripcion = pedido.descripcion.toUpperCase();

    this.comprasService.guardarPedidos(this.pedido).then(data => {
      console.log(data);

      this.pedido = data.data;

      this.movimientoArticulosDTO.forEach((element, index) => {

        if (element.movimiento !== null) {
          this.movimientoArticuloDTO.id = null;
          this.movimientoArticuloDTO.fecha=pedido.fecha;
          this.movimientoArticuloDTO.articuloId= this.articulos[index].id;
          this.movimientoArticuloDTO.movimiento = this.movimientoArticulosDTO[index].movimiento;
          this.movimientoArticuloDTO.pedidoId = data.data.id;
          console.log(this.movimientoArticuloDTO);


          this.comprasService
            .guardarMovimiento(this.movimientoArticuloDTO)
            .subscribe(resp => {
              console.log('entre :V');

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
}
