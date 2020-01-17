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
  articulosFilter: Articulo[] = null;
  stockArticulo: number[] = [];
  constructor(private comprasService: ComprasService) {}

  async ngOnInit() {
    await this.fetchEvent2().then(() => {
      console.log(this.articulos);
    });
    this.fetchEvent().then(() => {
    })
  }

  guardarPedido(pedido: Pedido) {
    this.pedido.id = null;
    this.pedido.nombre = pedido.nombre.toUpperCase();
    this.pedido.descripcion = pedido.descripcion.toUpperCase();
    this.pedido.fecha = pedido.fecha;

    this.comprasService.guardarPedidos(this.pedido).subscribe(data => {
      this.pedido = data;
      alert("SE GUARDO UN NUEVO PEDIDO");
      window.history.back();
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
        this.articulos.forEach( (a, index) => {
          // console.log(index);
          // console.log(a.id);
          this.stockArticulo.push(data.data[a.id]);
        } );
      });
  }
  volverAtras() {
    window.history.back();
  }
}
