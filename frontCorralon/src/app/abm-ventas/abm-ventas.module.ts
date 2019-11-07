import { ModificarDepartamentoComponent } from "./modificar-departamento/modificar-departamento.component";
import { FormsModule } from "@angular/forms";
import { ListarDepartamentoComponent } from "./listar-departamento/listar-departamento.component";
import { NgModule } from "@angular/core";
import { CommonModule } from "@angular/common";

import { AbmVentasRoutingModule } from "./abm-ventas-routing.module";
import { AbmVentasComponent } from "./abm-ventas.component";
import { SubMenuVentasComponent } from "./sub-menu-ventas/sub-menu-ventas.component";
import { AgregarDepartamentoComponent } from "./agregar-departamento/agregar-departamento.component";

@NgModule({
  declarations: [
    AbmVentasComponent,
    SubMenuVentasComponent,
    ListarDepartamentoComponent,
    AgregarDepartamentoComponent,
    ModificarDepartamentoComponent
  ],
  imports: [CommonModule, AbmVentasRoutingModule, FormsModule]
})
export class AbmVentasModule {}
