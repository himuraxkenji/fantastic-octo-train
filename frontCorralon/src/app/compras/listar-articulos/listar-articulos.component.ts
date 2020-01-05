import { Router } from "@angular/router";
import { ComprasService } from "./../../service/compras.service";
import { Articulo } from "./../../modelo/Articulo";
import { Component, OnInit } from "@angular/core";

@Component({
  selector: "app-listar-articulos",
  templateUrl: "./listar-articulos.component.html",
  styleUrls: ["./listar-articulos.component.css"]
})
export class ListarArticulosComponent implements OnInit {
  // articulo: Articulo = null;
  articulos: Articulo[] = null;
  articulosFilter: Articulo[] = null;
  busquedaNombre: string = null;
  busqueda: string = null;
  constructor(private serviceCompra: ComprasService, private router: Router) {}

  ngOnInit() {
    this.serviceCompra.listarArticuloTodos().subscribe(data => {
      this.articulos = data.data;
      this.articulosFilter = data.data;
      console.info('Articulos');

      console.info(this.articulos);
      console.info('ArticulosFilter');

      console.info(this.articulosFilter);


    });
  }
  modificarArticulo(articulo: Articulo) {
    this.router.navigate(["compras/modificar-articulo/" + articulo.id]);
  }
  deshabilitarArticulo(articulo: Articulo) {
    let resultado: boolean;
    resultado = confirm("¿DESEA DESHABILITAR ESTE ARTICULO?");
    if (resultado === true) {
      this.serviceCompra.desabilitarArticulo(articulo.id).subscribe(data => {
        window.location.reload();
      });
    }
  }
  filtrarArticuloNombre(event: any) {
    if (this.busqueda !== null) {
      this.articulosFilter = this.articulos.filter(item => {
        if (item.nombre.toUpperCase().includes(this.busqueda.toUpperCase())) {
          return item;
        }
      });
    } else {
      this.articulosFilter = this.articulos;
    }
  }

  backPage() {
    window.history.back();
  }
}
