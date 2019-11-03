import { FormsModule } from '@angular/forms';
import { AbmComprasComponent } from './abm-compras.component';
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { AbmComprasRoutingModule } from './abm-compras-routing.module';

import { SubMenuComprasComponent } from './sub-menu-compras/sub-menu-compras.component';
import { AbmBancoComponent } from './abm-banco/abm-banco.component';
import { AgregarBancoComponent } from './agregar-banco/agregar-banco.component';


@NgModule({
  declarations: [AbmComprasComponent, SubMenuComprasComponent, AbmBancoComponent, AgregarBancoComponent  ],
  imports: [
    CommonModule,
    FormsModule,
    AbmComprasRoutingModule
  ]
})
export class AbmComprasModule { }
