import { ConfiguracionComponent } from './configuracion.component';
import { NgModule } from "@angular/core";
import { CommonModule } from "@angular/common";

import { ConfiguracionRoutingModule } from "./configuracion-routing.module";
import { SubMenuComponent } from "./sub-menu/sub-menu.component";
import { ListarBancoComponent } from "./listar-banco/listar-banco.component";

@NgModule({
  declarations: [ConfiguracionComponent, SubMenuComponent, ListarBancoComponent],
  imports: [CommonModule, ConfiguracionRoutingModule]
})
export class ConfiguracionModule {}
