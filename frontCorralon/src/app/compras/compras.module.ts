import { ComprasComponent } from './compras.component';
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { ComprasRoutingModule } from './compras-routing.module';
import { SubMenuComponent } from './sub-menu/sub-menu.component';


@NgModule({
  declarations: [SubMenuComponent,
  ComprasComponent],
  imports: [
    CommonModule,
    ComprasRoutingModule
  ]
})
export class ComprasModule { }
