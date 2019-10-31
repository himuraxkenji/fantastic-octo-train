import { AbmComprasComponent } from './abm-compras.component';
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { AbmComprasRoutingModule } from './abm-compras-routing.module';

import { SubMenuComprasComponent } from './sub-menu-compras/sub-menu-compras.component';
import { AbmBancoComponent } from './abm-banco/abm-banco.component';


@NgModule({
  declarations: [AbmComprasComponent, SubMenuComprasComponent, AbmBancoComponent  ],
  imports: [
    CommonModule,
    AbmComprasRoutingModule
  ]
})
export class AbmComprasModule { }
