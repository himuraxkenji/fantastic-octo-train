import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { ConfiguracionRoutingModule } from './configuracion-routing.module';
import { BancoComponent } from './banco/banco.component';


@NgModule({
  declarations: [BancoComponent],
  imports: [
    CommonModule,
    ConfiguracionRoutingModule
  ]
})
export class ConfiguracionModule { }
