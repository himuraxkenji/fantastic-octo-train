import { ModificarTipoDireccionComponent } from './modificar-tipo-direccion/modificar-tipo-direccion.component';
import { AgregarTipoDireccionComponent } from './agregar-tipo-direccion/agregar-tipo-direccion.component';
import { ListarDireccionComponent } from './listar-direccion/listar-direccion.component';
import { ListarTipoDireccionComponent } from './listar-tipo-direccion/listar-tipo-direccion.component';
import { ModificarClientesComponent } from './modificar-clientes/modificar-clientes.component';
import { AgregarClienteComponent } from './agregar-cliente/agregar-cliente.component';
import { ListarClientesComponent } from './listar-clientes/listar-clientes.component';
import { ModificarDistritoComponent } from './modificar-distrito/modificar-distrito.component';
import { AgregarDistritoComponent } from './agregar-distrito/agregar-distrito.component';
import { ListarDistritosComponent } from './listar-distritos/listar-distritos.component';
import { VentasComponent } from './ventas.component';
import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
// import { ListarDepartamentoComponent } from '../abm-ventas/listar-departamento/listar-departamento.component';
// import { AgregarDepartamentoComponent } from '../abm-ventas/listar-departamento/agregar-departamento/agregar-departamento.component';
// import { ModificarDepartamentoComponent } from '../abm-ventas/modificar-departamento/modificar-departamento.component';

const routes: Routes = [
    {path: '', component: VentasComponent,
    children: [
      // {path: 'listar-departamentos', component: ListarDepartamentoComponent},
      // {path: 'agregar-departamento', component: AgregarDepartamentoComponent},
      // {path: 'modificar-departamento/:id', component: ModificarDepartamentoComponent},
      {path: 'listar-distritos', component: ListarDistritosComponent},
      {path: 'agregar-distrito', component: AgregarDistritoComponent},
      {path: 'modificar-distrito/:id', component: ModificarDistritoComponent},
      {path: 'listar-clientes', component: ListarClientesComponent},
      {path: 'agregar-cliente', component: AgregarClienteComponent},
      {path: 'modificar-cliente/:id', component: ModificarClientesComponent},
      {path: 'listar-tipo-direccion', component: ListarTipoDireccionComponent},
      {path: 'listar-direccion', component: ListarDireccionComponent},
      {path: 'agregar-tipo-direccion', component: AgregarTipoDireccionComponent},
      {path: 'modificar-tipo-direccion/:id', component: ModificarTipoDireccionComponent}
    ]}
  ];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class VentasRoutingModule { }
