import { ServiceService } from '../../service/service.service';
import { Router } from '@angular/router';
import { Cliente } from '../../modelo/Cliente';
import { Component, OnInit } from '@angular/core';
import { THIS_EXPR } from '@angular/compiler/src/output/output_ast';

@Component({
  selector: 'app-listar-clientes',
  templateUrl: './listar-clientes.component.html',
  styleUrls: ['./listar-clientes.component.css']
})
export class ListarClientesComponent implements OnInit {

  clientes: Cliente[] = null;
  cliente: Cliente = null;
  clientesFilter: Cliente[] = null;
  busqueda: string = null;
  busquedaNumeros: string = null;

  constructor(private service: ServiceService, private router: Router) { }

  nuevoCliente() {
    this.router.navigate(['agregar-cliente']);

  }

  ngOnInit() {
    this.service.getClientes().subscribe(data => {
      this.clientes = data;
      this.clientesFilter = data;
      console.log('Listado');
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
  filtrarClientes(event: any) {
    console.log('filtrar');

    if (this.busqueda !== null) {
      console.log('filter despues 1er val');

      this.clientesFilter = this.clientes.filter(item => {
        console.log('filter despues 2da val');
        if (item.apellido.toUpperCase().includes(this.busqueda.toUpperCase())) {
          console.log('filter despues 3da val');
          //console.log(item);
          return item;
        }
      });
    } else {
      this.clientesFilter = this.clientes;

    }
  }

  filtrarClientesNumero(event: any) {
    console.log('filtra numeros');

    if (this.busquedaNumeros !== null) {
      this.clientesFilter = this.clientes.filter(item => {
        if ((item.dni + '').includes(this.busquedaNumeros)) {
          return item;
        }
      });
    } else {
      this.clientesFilter = this.clientes;
    }
  }
}
