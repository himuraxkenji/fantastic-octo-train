import { FormsModule } from '@angular/forms';
import { AbmComprasComponent } from './abm-compras.component';
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { AbmComprasRoutingModule } from './abm-compras-routing.module';

import { SubMenuComprasComponent } from './sub-menu-compras/sub-menu-compras.component';
import { AgregarBancoComponent } from './agregar-banco/agregar-banco.component';
import { ListarBancoComponent } from './listar-banco/listar-banco.component';


@NgModule({
  declarations: [AbmComprasComponent, SubMenuComprasComponent, AgregarBancoComponent, ListarBancoComponent ],
  imports: [
    CommonModule,
    FormsModule,
    AbmComprasRoutingModule
  ]
})
export class AbmComprasModule { }
