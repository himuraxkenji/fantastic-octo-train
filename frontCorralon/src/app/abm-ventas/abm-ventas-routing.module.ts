import { ListarDepartamentoComponent } from './listar-departamento/listar-departamento.component';
import { AbmVentasComponent } from './abm-ventas.component';
import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';


const routes: Routes = [
  {path: '', component: AbmVentasComponent,
    children: [
      { path: "listar-departamento", component:ListarDepartamentoComponent }
]}];
@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class AbmVentasRoutingModule { }
