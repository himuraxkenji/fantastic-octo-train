import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { ConfiguracionRoutingModule } from './configuracion-routing.module';
import { SubMenuComponent } from './sub-menu/sub-menu.component';
import { BancoComponent } from './banco/banco.component';



@NgModule({
  declarations: [SubMenuComponent, BancoComponent],
  imports: [
    CommonModule,
    ConfiguracionRoutingModule
  ]
})
export class ConfiguracionModule { }
