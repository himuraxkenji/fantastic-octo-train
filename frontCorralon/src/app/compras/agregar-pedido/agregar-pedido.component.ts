import { Router } from '@angular/router';
import { AbmComprasService } from 'src/app/service/abm-compras.service';
import { ComprasService } from './../../service/compras.service';
import { Pedido } from './../../modelo/Pedido';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-agregar-pedido',
  templateUrl: './agregar-pedido.component.html',
  styleUrls: ['./agregar-pedido.component.css']
})
export class AgregarPedidoComponent implements OnInit {
  pedido: Pedido = new Pedido();
  constructor(private comprasService: ComprasService) {}

  ngOnInit() {}
  guardarPedido(pedido: Pedido) {
    this.pedido.id = null;
    this.pedido.nombre= pedido.nombre.toUpperCase();
    this.pedido.descripcion= pedido.descripcion.toUpperCase();
    this.pedido.fecha= pedido.fecha;

    this.comprasService.guardarPedidos(this.pedido).subscribe(data => {
      this.pedido = data;
      alert("SE GUARDO UN NUEVO PEDIDO");
      window.history.back();
    });
  }
  volverAtras() {
    window.history.back();
  }
}
