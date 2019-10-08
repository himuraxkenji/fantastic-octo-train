// import { Distrito } from './../../modelo/Distrito';
// import { Departamento } from './../../modelo/Departamento';
// import { Router } from '@angular/router';
// import { ServiceService } from './../../service/service.service';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-agregar-distrito',
  templateUrl: './agregar-distrito.component.html',
  styleUrls: ['./agregar-distrito.component.css']
})
export class AgregarDistritoComponent implements OnInit {

// distrito: DistritoDTO = new DistritoDTO();
// departamentos: Departamento[] = null;
// // departamento: Departamento= null;
// departamentosFilter: Departamento[] = null;
// idDepto:number=1;
// nombreDepto:string=null;

//   constructor(private service: ServiceService, private router: Router) {


//    }
ngOnInit() {}
//   ngOnInit() {
//     this.service.getDepartamentos().subscribe(data => {
//       this.departamentos =  Object.keys(data.data).map(function(key) {
//         return data.data[key];
//       });
//       this.departamentosFilter = this.departamentos;
//      });
//      console.log(this.departamentos);
//   }
//   volverAtras() {
//     window.history.back();
//   }
//   nuevoDistrito(distrito: DistritoDTO){
//     this.distrito.idDepartamento=1;

//     this.departamentos.forEach(departamento => {
//       if(departamento.nombre == this.nombreDepto){
//           this.distrito.idDepartamento = departamento.id;
//         }
//     });

//     // for(var i = 0; i <  this.departamentos.length; i++){
//     //     if(this.departamentos[i].nombre == this.nombreDepto){
//     //       this.distrito.idDepartamento = this.departamentos[i].id;
//     //     }
//     // }
//     this.distrito.habilitado=1;

//     console.log(distrito);


//           //  console.log('entro');
//    // console.log(nombre + " - " + abreviatura);
//     this.service.createDistrito(this.distrito).subscribe(data=>{
//      alert('se guardo un nuevo distrto');
//      window.history.back();
//     } );

//   }

//   listarDepartamentos(filterVal: any) {
//     if (filterVal == "0")
//         this.departamentosFilter= this.departamentos;
//     else
//          this.departamentosFilter = this.departamentos.filter((item) => item.nombre == filterVal);
// }


}
