import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { SubMenuComponent } from './sub-menu/sub-menu.component';
import { VentasComponent } from './ventas.component';
import { VentasRoutingModule } from './ventas-routing.module';
import { ListarDepartamentoComponent } from './listar-departamento/listar-departamento.component';



@NgModule({
  declarations: [SubMenuComponent,VentasComponent, ListarDepartamentoComponent],
  imports: [
    CommonModule,
    VentasRoutingModule
  ]
})
export class VentasModule { }
