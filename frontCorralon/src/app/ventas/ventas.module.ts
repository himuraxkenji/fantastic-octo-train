import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { SubMenuComponent } from './sub-menu/sub-menu.component';
import { VentasComponent } from './ventas.component';
import { VentasRoutingModule } from './ventas-routing.module';
import { ListarDepartamentoComponent } from './listar-departamento/listar-departamento.component';
import { AgregarDepartamentoComponent } from './agregar-departamento/agregar-departamento.component';
import { ModificarDepartamentoComponent } from './modificar-departamento/modificar-departamento.component';
import { BajaDepartamentoComponent } from './baja-departamento/baja-departamento.component';
import { FormsModule } from '@angular/forms';



@NgModule({
  declarations: [
    SubMenuComponent,
    VentasComponent, 
    ListarDepartamentoComponent,
    AgregarDepartamentoComponent,
    ModificarDepartamentoComponent,
    BajaDepartamentoComponent
  ],
  imports: [
    CommonModule,
    VentasRoutingModule,
    FormsModule
  ]
})
export class VentasModule { }
