import { AgregarDistritoComponent } from './../agregar-distrito/agregar-distrito.component';
import { Router } from '@angular/router';
import { Component, OnInit } from '@angular/core';
// import { ServiceService } from './../../service/service.service';
// import { Distrito } from './../../modelo/Distrito';

@Component({
  selector: 'app-listar-distrito',
  templateUrl: './listar-distrito.component.html',
  styleUrls: ['./listar-distrito.component.css']
})
export class ListarDistritoComponent implements OnInit {

  // distrito: Distrito = null;
  // distritos: Distrito[] = null;
  // distritosFilter: Distrito[] = null;
  // busquedaNombre: string = null;


  // constructor(private service: ServiceService, private router: Router) { }

  ngOnInit() {}
  //     this.service.getDistritos().subscribe(data => {
  //       this.distritos =  Object.keys(data.data).map(function(key) {
  //         return data.data[key];
  //       });
  //       this.distritosFilter = this.distritos;
  //      });
  // }
  // nuevoDistrito() {
  //   this.router.navigate(['ventas/agregar-distrito']);
  // }

  // editar(distrito: Distrito): void {
  //   // localStorage.setItem('distrito', JSON.stringify(distrito));
  //   // this.router.navigate(['ventas/editar-distrito']);
  // }

  // eliminar(distrito: Distrito) {
  //   //this.service.deleteClientes(cliente).subscribe(data => {
  //     //this.clientes = this.clientes.filter(p => p !== cliente);
  //     //alert(' cliente Eliminado');
  //   //});
  // }
  // filtrarDistritoNombre(event: any) {
  //   console.log('filtrar por nombre');

  //   if (this.busquedaNombre !== null) {
  //     this.distritosFilter = this.distritos.filter(item => {
  //           if (item.nombre.toUpperCase().includes(this.busquedaNombre.toUpperCase())) {
  //                  return item;
  //       }
  //     });
  //   } else {
  //     this.distritosFilter = this.distritos;

  //   }
  // }
}
