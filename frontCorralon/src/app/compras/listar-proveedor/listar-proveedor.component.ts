import { ComprasService } from "./../../service/compras.service";
import { Proveedor } from "./../../modelo/Proveedor";
import { Router } from "@angular/router";
import { Component, OnInit, Input } from "@angular/core";

@Component({
  selector: "app-listar-proveedor",
  templateUrl: "./listar-proveedor.component.html",
  styleUrls: ["./listar-proveedor.component.css"]
})
export class ListarProveedorComponent implements OnInit {
  proveedor: Proveedor = null;
  proveedores: Proveedor[] = null;
  proveedoresFilter: Proveedor[] = null;
  busquedaNombre: string = null;
  busqueda: string = null;

  constructor(private router: Router, private serviceCompras: ComprasService) {}

  ngOnInit() {
    // this.service.listarBancosTodos().subscribe(data => {
    //   this.bancos = data.data;
    //   this.bancoFilter = data.data;
    // });
    this.serviceCompras.listarProveedoresTodos().subscribe(data => {
      this.proveedores = Object.keys(data.data).map(function(key) {
        return data.data[key];
      });
      this.proveedoresFilter = this.proveedores;
    });
  }
  filtrarProveedorRazonSocial(event: any) {
    if (this.busqueda !== null) {
      this.proveedoresFilter = this.proveedores.filter(item => {
        if (
          item.razonSocial.toUpperCase().includes(this.busqueda.toUpperCase())
        ) {
          return item;
        }
      });
    } else {
      this.proveedoresFilter = this.proveedores;
    }
  }
  // filtrarDepartamentoNombre(event: any) {
  //   console.log("filtra nombre");

  //   if (this.busquedaNombre !== null) {
  //     this.proveedoresFilter = this.proveedores.filter(item => {
  //       if (
  //         item.razonSocial
  //           .toUpperCase()
  //           .includes(this.busquedaNombre.toUpperCase())
  //       ) {
  //         return item;
  //       }
  //     });
  //   } else {
  //     this.proveedoresFilter = this.proveedores;
  //   }
  // }
  modificarProveedor() {}
  deshabilitarProveedor() {}
  backPage() {
    window.history.back();
  }
}
