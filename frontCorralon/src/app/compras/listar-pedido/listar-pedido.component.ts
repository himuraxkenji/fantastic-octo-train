import { Articulo } from './../../modelo/Articulo';
import { ListarArticulosComponent } from './../listar-articulos/listar-articulos.component';
import { Router } from '@angular/router';
import { ComprasService } from './../../service/compras.service';
import { Pedido } from './../../modelo/Pedido';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-listar-pedido',
  templateUrl: './listar-pedido.component.html',
  styleUrls: ['./listar-pedido.component.css']
})
export class ListarPedidoComponent implements OnInit {

  pedidos: Pedido[] = [];
  pedidosFilter: Pedido[] = [];
  busqueda: string = null;
  busquedaFecha: string = null;

  //
  //
  constructor(private serviceCompra: ComprasService, private router: Router) {}

  ngOnInit() {
    this.fetchEvent().then(() => {
      console.log(this.pedidos);
    });

  }

  fetchEvent() {
    return this.serviceCompra
      .listarPedidoTodos()
      .toPromise()
      .then(data => {
        this.pedidos = data.data;
        this.pedidosFilter = this.pedidos;

      });
  }


  deshabilitarPedido(pedido: Pedido) {
    let resultado: boolean;
    resultado = confirm("¿DESEA DESHABILITAR ESTE PEDIDO?");
    if (resultado === true) {
      this.serviceCompra.desabilitarPedido(pedido.id).subscribe(data => {
        window.location.reload();
      });
    }
  }
  filtarPedidoNombre(event: any) {
    if (this.busqueda !== null) {
      this.pedidosFilter = this.pedidos.filter(item => {
        if (item.nombre.toUpperCase().includes(this.busqueda.toUpperCase())) {
          return item;
        }
      });
    } else {
      this.pedidosFilter = this.pedidos;
    }
  }
  filtarPedidoFecha(event: any) {
    if (this.busquedaFecha !== null) {
      this.pedidosFilter = this.pedidos.filter(item => {
        if (item.fecha.includes(this.busquedaFecha)) {
          return item;
        }
      });
    } else {
      this.pedidosFilter = this.pedidos;
    }
  }
  backPage() {
    window.history.back();
  }
}
