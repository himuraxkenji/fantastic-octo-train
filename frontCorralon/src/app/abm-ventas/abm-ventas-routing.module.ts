import { ListarDepartamentoComponent } from './../ventas/listar-departamento/listar-departamento.component';
import { AbmVentasComponent } from './abm-ventas.component';
import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { AbmBancoComponent } from '../abm-compras/abm-banco/abm-banco.component';


const routes: Routes = [
  {path: '', component: AbmVentasComponent},
];
@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class AbmVentasRoutingModule { }
