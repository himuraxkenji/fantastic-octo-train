import { VentasService } from "./../../service/ventas.service";
import { Router } from "@angular/router";
import { Cliente } from "../../modelo/Cliente";
import { Component, OnInit } from "@angular/core";

@Component({
  selector: "app-listar-clientes",
  templateUrl: "./listar-clientes.component.html",
  styleUrls: ["./listar-clientes.component.css"]
})
export class ListarClientesComponent implements OnInit {
  clientes: Cliente[] = null;
  cliente: Cliente = null;
  clientesFilter: Cliente[] = null;

  busquedaNombre: string = null;
  busquedaApellido: string = null;
  busquedaDNI: string = null;

  constructor(private service: VentasService, private router: Router) {}
  ngOnInit() {
    this.service.listarClientesTodos().subscribe(data => {
      this.clientes = data.data;
      this.clientesFilter = data.data;
    });
  }
  modificarCliente(cliente: Cliente) {
    this.router.navigate(["/ventas/modificar-cliente/" + cliente.id]);
  }
  inhabilitarCliente(cliente: Cliente) {
    let resultado: boolean;
    resultado = confirm("¿DESEA ELIMINAR CLIENTE?");
    if (resultado === true) {
      this.service.deshabilitarCliente(cliente.id).subscribe(data => {
        window.location.reload();
      });
    }
  }
  filtrarClienteNombre(event: any) {
    if (this.busquedaNombre !== null) {
      this.clientesFilter = this.clientes.filter(item => {
        if (
          item.nombre.toUpperCase().includes(this.busquedaNombre.toUpperCase())
        ) {
          return item;
        }
      });
    } else {
      this.clientesFilter = this.clientes;
    }
  }
  filtrarClienteApellido(event: any) {
    if (this.busquedaApellido !== null) {
      this.clientesFilter = this.clientes.filter(item => {
        if (
          item.apellido
            .toUpperCase()
            .includes(this.busquedaApellido.toUpperCase())
        ) {
          return item;
        }
      });
    } else {
      this.clientesFilter = this.clientes;
    }
  }

  filtrarClienteDNI(event: any) {
    if (this.busquedaDNI !== null) {
      this.clientesFilter = this.clientes.filter(item => {
        if (item.dni.includes(this.busquedaDNI)) {
          return item;
        }
      });
    } else {
      this.clientesFilter = this.clientes;
    }
  }
  backPage(){
    window.history.back();
  }
}
