import { ModificarTipoDoreccionComponent } from './modificar-tipo-doreccion/modificar-tipo-doreccion.component';
import { AgregarTipoDoreccionComponent } from './agregar-tipo-doreccion/agregar-tipo-doreccion.component';
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
import { ListarDepartamentoComponent } from './listar-departamento/listar-departamento.component';
import { AgregarDepartamentoComponent } from './agregar-departamento/agregar-departamento.component';
import { ModificarDepartamentoComponent } from './modificar-departamento/modificar-departamento.component';

const routes: Routes = [
    {path: '', component: VentasComponent,
    children:[
      {path: 'listar-departamentos', component: ListarDepartamentoComponent},
      {path: 'agregar-departamento', component: AgregarDepartamentoComponent},
      {path: 'modificar-departamento/:id', component: ModificarDepartamentoComponent},
      {path: 'listar-distritos', component: ListarDistritosComponent},
      {path: 'agregar-distrito', component: AgregarDistritoComponent},
      {path: 'modificar-distrito/:id', component: ModificarDistritoComponent},
      {path: 'listar-clientes', component: ListarClientesComponent},
      {path: 'agregar-cliente', component: AgregarClienteComponent},
      {path: 'modificar-cliente/:id', component: ModificarClientesComponent},
      {path: 'listar-tipo-direccion', component: ListarTipoDireccionComponent},
      {path: 'listar-direccion', component: ListarDireccionComponent},
      {path: 'agregar-tipo-direccion', component: AgregarTipoDoreccionComponent},
      {path: 'modificar-tipo-direccion', component: ModificarTipoDoreccionComponent}
    ]}
  ];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class VentasRoutingModule { }
