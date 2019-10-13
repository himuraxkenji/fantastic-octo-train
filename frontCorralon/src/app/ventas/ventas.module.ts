import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { SubMenuComponent } from './sub-menu/sub-menu.component';
import { VentasComponent } from './ventas.component';
import { VentasRoutingModule } from './ventas-routing.module';
import { ListarDepartamentoComponent } from './listar-departamento/listar-departamento.component';
import { AgregarDepartamentoComponent } from './agregar-departamento/agregar-departamento.component';
import { ModificarDepartamentoComponent } from './modificar-departamento/modificar-departamento.component';
import { FormsModule } from '@angular/forms';
import { ListarDistritosComponent } from './listar-distritos/listar-distritos.component';
import { AgregarDistritoComponent } from './agregar-distrito/agregar-distrito.component';
import { ModificarDistritoComponent } from './modificar-distrito/modificar-distrito.component';



@NgModule({
  declarations: [
    SubMenuComponent,
    VentasComponent,
    ListarDepartamentoComponent,
    AgregarDepartamentoComponent,
    ModificarDepartamentoComponent,
    ListarDistritosComponent,
    AgregarDistritoComponent,
    ModificarDistritoComponent
  ],
  imports: [
    CommonModule,
    VentasRoutingModule,
    FormsModule
  ]
})
export class VentasModule { }
