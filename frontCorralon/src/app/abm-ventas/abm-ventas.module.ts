import { ListarDepartamentoComponent } from './../ventas/listar-departamento/listar-departamento.component';
import { VentasComponent } from './../ventas/ventas.component';
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { AbmVentasRoutingModule } from './abm-ventas-routing.module';
import { AbmVentasComponent } from './abm-ventas.component';
import { SubMenuVentasComponent } from './sub-menu-ventas/sub-menu-ventas.component';


@NgModule({
  declarations: [AbmVentasComponent, SubMenuVentasComponent],
  imports: [
    CommonModule,
    AbmVentasRoutingModule
  ]
})
export class AbmVentasModule { }
