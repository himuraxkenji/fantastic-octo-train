import { FormsModule } from '@angular/forms';
import { ComprasComponent } from './compras.component';
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { ComprasRoutingModule } from './compras-routing.module';
import { SubMenuComponent } from './sub-menu/sub-menu.component';
import { ListarProveedorComponent } from './listar-proveedor/listar-proveedor.component';
import { ListarArticulosComponent } from './listar-articulos/listar-articulos.component';
import { AgregarProveedorComponent } from './agregar-proveedor/agregar-proveedor.component';
// import { ListarPreciosComponent } from './listar-precios/listar-precios.component';
// import { ListarRubroComponent } from './listar-rubro/listar-rubro.component';
// import { ListarSubrubroComponent } from './listar-subrubro/listar-subrubro.component';


@NgModule({
  declarations: [SubMenuComponent,
  ComprasComponent,
  ListarProveedorComponent,
  ListarArticulosComponent,
  AgregarProveedorComponent
  // ListarPreciosComponent,
  // ListarRubroComponent,
  // ListarSubrubroComponent
],
  imports: [
    CommonModule,
    ComprasRoutingModule,
    FormsModule
  ]
})
export class ComprasModule { }
