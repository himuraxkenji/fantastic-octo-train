import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { ClienteRoutingModule } from './cliente-routing.module';
import {FormsModule} from '@angular/forms';
import { ListarClientesComponent } from '../ventas/listar-clientes/listar-clientes.component';
import { AgregarClientesComponent } from '../ventas/agregar-clientes/agregar-clientes.component';
import { EliminarClientesComponent } from '../ventas/eliminar-clientes/eliminar-clientes.component';
import { ModificarClientesComponent } from '../ventas/modificar-clientes/modificar-clientes.component';



@NgModule({
  declarations: [ListarClientesComponent, AgregarClientesComponent, EliminarClientesComponent, ModificarClientesComponent],
  imports: [
    CommonModule,
    ClienteRoutingModule,
    FormsModule
  ]
})
export class ClienteModule { }
