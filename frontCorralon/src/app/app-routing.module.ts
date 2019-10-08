import { ListarDireccionComponent } from './direccion/listar-direccion/listar-direccion.component';
import { ListarDistritoComponent } from './distrito/listar-distrito/listar-distrito.component';

import { VentasComponent } from './ventas/ventas.component';
import { NavbarLogisticaComponent } from './logistica/navbar-logistica/navbar-logistica.component';
import { NavbarReportesComponent } from './reportes/navbar-reportes/navbar-reportes.component';
import { NavbarSeguridadComponent } from './seguridad/navbar-seguridad/navbar-seguridad.component';

import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { NavbarComprasComponent } from './compras/navbar-compras/navbar-compras.component';
import { ListarClientesComponent } from './ventas/listar-clientes/listar-clientes.component';
import { ListarDepartamentoComponent } from './ventas/listar-departamento/listar-departamento.component';



import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';


const routes: Routes = [];
{path: 'compras', component: NavbarComprasComponent},
  {path: 'seguridad', component: NavbarSeguridadComponent},
  {path: 'navbar-reportes', component: NavbarReportesComponent},
  {path: 'navbar-logistica', component: NavbarLogisticaComponent}
>>>>>>> parent of 4af4976... Back y front
=======
import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';


const routes: Routes = [];
>>>>>>> parent of 4af4976... Back y front
=======
import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';


const routes: Routes = [];
>>>>>>> parent of 4af4976... Back y front
=======
import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';


const routes: Routes = [];
>>>>>>> parent of 4af4976... Back y front

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
