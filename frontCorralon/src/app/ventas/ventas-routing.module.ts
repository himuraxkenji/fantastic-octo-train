import { VentasComponent } from './ventas.component';
import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

const routes: Routes = [
    {path: '', component: VentasComponent}
    //   children: [
    //   {path: 'listar-cliente', component: ListarClientesComponent},
    //   {path: 'listar-departamento', component: ListarDepartamentoComponent}
    //   // {path: 'listar-distrito', component: ListarDistritoComponent},
    //   // {path: 'listar-direccion', component: ListarDireccionComponent}
    // ]}
  ];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class VentasRoutingModule { }
