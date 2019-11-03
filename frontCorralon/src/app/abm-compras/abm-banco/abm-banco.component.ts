import { Banco } from './../../modelo/Banco';
import { Router } from '@angular/router';
import { AbmComprasService } from './../../service/abm-compras.service';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-abm-banco',
  templateUrl: './abm-banco.component.html',
  styleUrls: ['./abm-banco.component.css']
})
export class AbmBancoComponent implements OnInit {
  banco: Banco = null;
  bancos: Banco[] = null;
  bancoFilter: Banco[] = null;
  busquedaNombre: string = null;
  busqueda: string = null;

  constructor(private service: AbmComprasService, private router: Router) { }

  ngOnInit() {
    this.service.listarBancosTodos().subscribe(data => {
      this.bancos = data.data;
      this.bancoFilter = data.data;
    });
  }
  modificarBanco(banco: Banco){

  }
  deshabilitarBanco(banco: Banco){

  }
}
