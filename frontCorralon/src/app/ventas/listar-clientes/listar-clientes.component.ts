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

  // nuevoCliente() {
  //   this.router.navigate(['agregar-cliente']);

  // }

  ngOnInit() {
    this.service.listarClientesTodos().subscribe(data => {
      this.clientes = data.data;
      this.clientesFilter = data.data;
    });
  }
  editar(Cliente: Cliente): void {
    //localStorage.setItem('id', cliente.id.toString());
    //this.router.navigate(['modificar-cliente']);
  }
  eliminar(Cliente: Cliente) {
    //this.service.deleteClientes(cliente).subscribe(data => {
    //this.clientes = this.clientes.filter(p => p !== cliente);
    //alert(' cliente Eliminado');
    //});
  }
  filtrarClienteNombre(event: any) {
    if (this.busquedaNombre !== null) {
      this.clientesFilter = this.clientes.filter(item => {
        if (item.nombre.toUpperCase().includes(this.busquedaNombre.toUpperCase())) {
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
        if (item.apellido.toUpperCase().includes(this.busquedaApellido.toUpperCase())) {
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
        if ((item.dni).includes(this.busquedaDNI)) {
          return item;
        }
      });
    } else {
      this.clientesFilter = this.clientes;
    }
  }
}
