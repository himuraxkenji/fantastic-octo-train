import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { SubMenuComponent } from './sub-menu/sub-menu.component';
import { VentasComponent } from './ventas.component';
import { VentasRoutingModule } from './ventas-routing.module';
// import { ListarDepartamentoComponent } from '../abm-ventas/listar-departamento/listar-departamento.component';
// import { AgregarDepartamentoComponent } from '../abm-ventas/agregar-departamento/agregar-departamento.component';
import { ModificarDepartamentoComponent } from './modificar-departamento/modificar-departamento.component';
import { FormsModule } from '@angular/forms';
import { ListarDistritosComponent } from './listar-distritos/listar-distritos.component';
import { AgregarDistritoComponent } from './agregar-distrito/agregar-distrito.component';
import { ModificarDistritoComponent } from './modificar-distrito/modificar-distrito.component';
import { AgregarClienteComponent } from './agregar-cliente/agregar-cliente.component';
import { ModificarClientesComponent } from './modificar-clientes/modificar-clientes.component';
import { ListarClientesComponent } from './listar-clientes/listar-clientes.component';
import { ListarTipoDireccionComponent } from './listar-tipo-direccion/listar-tipo-direccion.component';
import { ListarDireccionComponent } from './listar-direccion/listar-direccion.component';
import { ModificarTipoDireccionComponent } from './modificar-tipo-direccion/modificar-tipo-direccion.component';
import { AgregarTipoDireccionComponent } from './agregar-tipo-direccion/agregar-tipo-direccion.component';



@NgModule({
  declarations: [
    SubMenuComponent,
    VentasComponent,
    // ListarDepartamentoComponent,
    // AgregarDepartamentoComponent,
    ModificarDepartamentoComponent,
    ListarDistritosComponent,
    AgregarDistritoComponent,
    ModificarDistritoComponent,
    ListarClientesComponent,
    AgregarClienteComponent,
    ModificarClientesComponent,
    ListarTipoDireccionComponent,
    ListarDireccionComponent,
    AgregarTipoDireccionComponent,
    ModificarTipoDireccionComponent

  ],
  imports: [
    CommonModule,
    VentasRoutingModule,
    FormsModule
  ]
})
export class VentasModule { }
