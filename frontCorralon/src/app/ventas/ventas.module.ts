import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { SubMenuComponent } from './sub-menu/sub-menu.component';
import { VentasComponent } from './ventas.component';
import { VentasRoutingModule } from './ventas-routing.module';



@NgModule({
  declarations: [SubMenuComponent,VentasComponent],
  imports: [
    CommonModule,
    VentasRoutingModule
  ]
})
export class VentasModule { }
