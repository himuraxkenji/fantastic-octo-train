import { FormsModule } from '@angular/forms';
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { PedidosComponent } from './pedidos/pedidos.component';



@NgModule({
  declarations: [PedidosComponent],
  imports: [
    FormsModule,
    CommonModule
  ],
  exports: [PedidosComponent]
})
export class SharedModule { }
