import { FormsModule } from '@angular/forms';
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { PedidosComponent } from './pedidos/pedidos.component';
import { AjustesComponent } from './ajustes/ajustes.component';



@NgModule({
  declarations: [PedidosComponent, AjustesComponent],
  imports: [
    FormsModule,
    CommonModule
  ],
  exports: [PedidosComponent]
})
export class SharedModule { }
