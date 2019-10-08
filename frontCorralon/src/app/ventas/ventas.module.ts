import { AppRoutingModule } from './../app-routing.module';
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { VentasRoutingModule } from './ventas-routing.module';
import { SubMenuComponent } from './sub-menu/sub-menu.component';



@NgModule({
  declarations: [SubMenuComponent],
  imports: [
    CommonModule,
    VentasModule
  ]
})
export class VentasModule { }
