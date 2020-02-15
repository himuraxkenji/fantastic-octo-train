import {ActivatedRoute, Router} from '@angular/router';
import {Component, OnInit, Input} from '@angular/core';
import {Pedido} from 'src/app/modelo/Pedido';
import {Articulo} from 'src/app/modelo/Articulo';
import {MovimientoArticuloDTO} from 'src/app/modelo/MovimientoArticuloDTO';
import {ComprasService} from 'src/app/service/compras.service';
import {Proveedor} from 'src/app/modelo/Proveedor';




@Component({
  selector: 'app-pedidos',
  templateUrl: './pedidos.component.html',
  styleUrls: ['./pedidos.component.css']
})
export class PedidosComponent implements OnInit {

  @Input() consultar: boolean;
  pedido: Pedido = new Pedido();

  articulos: Articulo[] = [];

  movimientoArticuloDTO: MovimientoArticuloDTO = new MovimientoArticuloDTO();
  movimientoArticulosDTO: MovimientoArticuloDTO[] = [];

  articulosFilter: Articulo[] = null;
  stockArticulo: number[] = [];
  proveedores: Proveedor[] = [];
  razonSocial: string = ' ';
  movimientoFilter: MovimientoArticuloDTO[] = [];
  movimientosPrevios : StockArticulo[] =[]
  stockArticuloPorPedido : StockArticulo[] = [];
  constructor(private comprasService: ComprasService,
              private route: Router,
              private active: ActivatedRoute) {
  }

  async ngOnInit() {
    if (this.route.url === '/compras/agregar-pedido') {
      console.log('agregar');
    } else {
      const idPedido = Number(this.active.snapshot.paramMap.get('id'));
      await this.comprasService.listarPedidoId(idPedido).toPromise().then(data => this.pedido = data.data);
    }

    await this.getArticulos().then(() => {
      this.articulos.forEach((a, index) => {
        this.movimientoArticulosDTO.push(new MovimientoArticuloDTO());
        this.movimientoArticulosDTO[index].movimiento = null;
        this.movimientoArticulosDTO[index].articuloId = a.id;
        this.movimientoFilter = this.movimientoArticulosDTO;
        console.log(a.id + " - " + a.nombre);
      });
    });
    this.getMovimientos().then(() => {
      this.getStock()
    });

    this.listaProveedor();
    //
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
          this.movimientoArticuloDTO.fecha = pedido.fecha;
          this.movimientoArticuloDTO.articuloId = this.articulos[index].id;
          this.movimientoArticuloDTO.movimiento = this.movimientoArticulosDTO[index].movimiento;
          this.movimientoArticuloDTO.pedidoId = data.data.id;

          console.log(this.movimientoArticuloDTO);

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
  }

  listaProveedor() {
    this.comprasService.listarProveedoresHabilitados().subscribe(data => {
      this.proveedores = data.data;
      this.proveedores.sort((a, b) => a.razonSocial.length - b.razonSocial.length)

    });
  }

  getArticulos() {
    return this.comprasService
      .listarArticuloHabilitados()
      .toPromise()
      .then(data => {
        this.articulos = data.data;
        this.articulosFilter = this.articulos;
      });
  }

  getMovimientos() {
    if (this.consultar) {
      return this.comprasService
        .getMovimientosPrevios(this.pedido.id)
        .toPromise()
        .then(data => {
          console.log('getMovimientosPrevios');
          let keys = Object.keys(data.data);
          let value = Object.values(data.data);
          let movimientosPrev  = [];
          value.forEach((v, index) => {
            let stock = new StockArticulo(Number(keys[index]), Number(v));
            movimientosPrev.push(stock);
          });
          console.log('movimivneto previo-------')
          console.log(movimientosPrev)
          // movimientosPrev = movimientosPrev.filter( m => m.stock !== 0);

          this.movimientosPrevios = movimientosPrev;
          console.log(movimientosPrev);
          this.articulos.forEach((a, index) => {
            this.stockArticulo.push(data.data.id);
          });
          this.movimientosPrevios.forEach(mov => this.stockArticulo.push(mov.stock))
        });
    } else {
      return this.comprasService
        .listarStockArticulo()
        .toPromise()
        .then(data => {
          console.log('listar')
          console.log(data.data);
          this.articulos.forEach((a, index) => {
            this.stockArticulo.push(data.data[index]);
            console.log('Consultar: ' + data.data[a.id]);
          });
          console.log(this.stockArticulo)
        });

    }
  }

  volverAtras() {
    window.history.back();
  }

  async listarFiltro() {
    this.articulosFilter = [];
    if (this.razonSocial === ' ') {
      this.articulosFilter = this.articulos;
      this.movimientoFilter = this.movimientoArticulosDTO;
    } else {
      await this.articulos.forEach(p => (p.proveedorId.razonSocial === this.razonSocial) ? this.articulosFilter.push(p) : false);
      this.movimientoFilter = [];
      console.warn('Movimiento filter');

      for (let articulo of this.articulosFilter) {
        for (let movimiento of this.movimientoArticulosDTO) {
          if (movimiento.articuloId == articulo.id) {
            this.movimientoFilter.push(movimiento);

            console.log(movimiento.articuloId + ' - ' + articulo.id);
          }

        }
      }

    }
    console.error('Sali');

    console.log('Movimiento Filter');

    console.log(this.movimientoFilter);

    console.log('Movimiento articulo');
    console.log(this.movimientoArticulosDTO);


  }

  actualizarStockFiltro(articulosFilter: Articulo[]) {
    this.stockArticulo = [];
    return this.comprasService
      .listarStockArticulo()
      .toPromise()
      .then(data => {
        articulosFilter.forEach((a, index) => {
          this.stockArticulo.push(data.data[a.id]);
        });
      });
  }

  guardarCarga() {
    console.log('Entre');
  }

  getStock() {
    if (this.consultar) {
      return this.comprasService
        .getMovimientosStock(this.pedido.id)
        .toPromise()
        .then(data => {
          let keys = Object.keys( data.data );
          let value = Object.values(data.data);
          keys.forEach( (k, index) => this.stockArticuloPorPedido.push(new StockArticulo(Number(k), Number(value[index]) )))
          this.articulosFilter = this.articulosFilter.filter( a => keys.includes(String(a.id)));

          this.movimientoFilter = [];
          keys.forEach( (k, index) => {
            let mov = new MovimientoArticuloDTO();
            mov.articuloId = Number(k);
            mov.movimiento = Number(value[index]);
            this.movimientoFilter.push(mov)
          });
          let indexMovpre = [];
          this.movimientoFilter.forEach(p=> indexMovpre.push(p.articuloId));
          console.log('mivev')
          console.log(keys);
          console.log('MovPrev')
          console.log(this.movimientosPrevios);
          this.movimientosPrevios = this.movimientosPrevios.filter(m => indexMovpre.includes(m.idArticulo));
          console.log('Mov pre');
          console.log(this.movimientosPrevios);

          this.stockArticulo.splice(0, this.stockArticulo.length);
          console.log('stock antes');
          console.log(this.stockArticulo)
          this.movimientosPrevios.forEach(m => this.stockArticulo.push(m.stock));
          console.log(this.stockArticulo);
        });

    }
  }
}

export class StockArticulo {
  idArticulo: number;
  stock: number;
  constructor(idArticulo: number, stock: number) {
    this.idArticulo = idArticulo;
    this.stock = stock;
  }


}
