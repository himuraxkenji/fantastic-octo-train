import { FormsModule } from "@angular/forms";
import { AbmComprasComponent } from "./abm-compras.component";
import { NgModule } from "@angular/core";
import { CommonModule } from "@angular/common";

import { AbmComprasRoutingModule } from "./abm-compras-routing.module";

import { SubMenuComprasComponent } from "./sub-menu-compras/sub-menu-compras.component";
import { AgregarBancoComponent } from "./agregar-banco/agregar-banco.component";
import { ListarBancoComponent } from "./listar-banco/listar-banco.component";
import { ModificarBancoComponent } from "./modificar-banco/modificar-banco.component";
import { ListarMarcaComponent } from './listar-marca/listar-marca.component';
import { AgregarMarcaComponent } from './agregar-marca/agregar-marca.component';
import { ModificarMarcaComponent } from './modificar-marca/modificar-marca.component';

@NgModule({
  declarations: [
    AbmComprasComponent,
    SubMenuComprasComponent,
    AgregarBancoComponent,
    ListarBancoComponent,
    ModificarBancoComponent,
    ListarMarcaComponent,
    AgregarMarcaComponent,
    ModificarMarcaComponent
  ],
  imports: [CommonModule, FormsModule, AbmComprasRoutingModule]
})
export class AbmComprasModule {}
