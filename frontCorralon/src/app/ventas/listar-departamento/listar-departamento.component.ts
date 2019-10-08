import { VentasService } from './../../service/ventas.service';
import { Component, OnInit } from '@angular/core';
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

  constructor(private service: VentasService, private router: Router) { }

  ngOnInit() {  this.service.listarDepartamentosTodos().subscribe(data => {
          this.departamentos =  Object.keys(data.data).map(function(key) {
            return data.data[key];
          });
          this.departamentosFilter = this.departamentos;
         });
    }

}
