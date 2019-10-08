import { VentasComponent } from './ventas.component';
import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { ListarDepartamentoComponent } from './listar-departamento/listar-departamento.component';

const routes: Routes = [
    {path: '', component: VentasComponent, 
    children:[
      {path: 'listar-departamentos', component: ListarDepartamentoComponent},
      {path: 'departamentos', component: ListarDepartamentoComponent}
    ]}
  ];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class VentasRoutingModule { }
