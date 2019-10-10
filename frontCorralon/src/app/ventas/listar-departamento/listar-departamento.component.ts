import { VentasService } from './../../service/ventas.service';
import { Component, OnInit, Input } from '@angular/core';
import { Departamento } from '../../modelo/Departamento';
import {Router} from '@angular/router';
import { from } from 'rxjs';

@Component({
  selector: 'app-listar-departamento',
  templateUrl: './listar-departamento.component.html',
  styleUrls: ['./listar-departamento.component.css']
})
export class ListarDepartamentoComponent implements OnInit {

  departamento: Departamento = null;
  departamentos: Departamento[] =  null;
  departamentosFilter: Departamento[] = null;
  busquedaNombre: string = null;
  busqueda: string = null;

  constructor(private service: VentasService, private router: Router) { }

  ngOnInit() {  this.service.listarDepartamentosTodos().subscribe(data => {
          this.departamentos =  Object.keys(data.data).map(function(key) {
            return data.data[key];
          });
          this.departamentosFilter = this.departamentos;
         });
    }

    filtrarDepartamentoAbreviatura(event: any) {
      console.log('filtra nombre');

      if (this.busqueda !== null) {
        this.departamentosFilter = this.departamentos.filter(item => {
          if ((item.abreviatura.toUpperCase()).includes(this.busqueda.toUpperCase())) {
            return item;
          }
        });
      } else {
        this.departamentosFilter = this.departamentos;
      }
    }
    filtrarDepartamentoNombre(event: any) {
        console.log('filtra nombre');

        if (this.busquedaNombre !== null) {
          this.departamentosFilter = this.departamentos.filter(item => {
            if ((item.nombre.toUpperCase()).includes(this.busquedaNombre.toUpperCase())) {
              return item;
              }
          });
        } else {
          this.departamentosFilter = this.departamentos;
        }
      }
      modificarDepartamento(departamento: Departamento){

        localStorage.setItem('departamentos', JSON.stringify(this.departamento));
        this.router.navigate(['/ventas/modificar-departamento']);

      }
}
