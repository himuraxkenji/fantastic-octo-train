import { ListarSubrubroComponent } from './listar-subrubro/listar-subrubro.component';
import { ListarRubroComponent } from './listar-rubro/listar-rubro.component';
import { ListarPreciosComponent } from './listar-precios/listar-precios.component';
import { ListarArticulosComponent } from './listar-articulos/listar-articulos.component';
import { ListarProveedorComponent } from './listar-proveedor/listar-proveedor.component';
import { ComprasComponent } from './compras.component';
import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';


const routes: Routes = [
  {path: '', component: ComprasComponent,
  children:[
    {path: 'listar-proveedores', component: ListarProveedorComponent},
    {path: 'listar-articulos', component: ListarArticulosComponent},
    {path: 'listar-precios', component: ListarPreciosComponent},
    {path: 'listar-rubros', component: ListarRubroComponent},
    {path: 'listar-subrubros', component: ListarSubrubroComponent}

  ]}
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class ComprasRoutingModule { }
