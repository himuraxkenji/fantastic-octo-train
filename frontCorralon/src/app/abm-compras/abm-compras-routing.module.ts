import { ListarMarcaComponent } from "./listar-marca/listar-marca.component";
import { ModificarBancoComponent } from "./modificar-banco/modificar-banco.component";
import { ListarBancoComponent } from "./listar-banco/listar-banco.component";
import { AgregarBancoComponent } from "./agregar-banco/agregar-banco.component";
import { AbmComprasComponent } from "./abm-compras.component";
import { NgModule } from "@angular/core";
import { Routes, RouterModule } from "@angular/router";

const routes: Routes = [
  {
    path: "",
    component: AbmComprasComponent,
    children: [
      { path: "agregar-banco", component: AgregarBancoComponent },
      { path: "listar-banco", component: ListarBancoComponent },
      { path: "listar-marca", component: ListarMarcaComponent },
      { path: "modificar-banco/:id", component: ModificarBancoComponent }
    ]
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class AbmComprasRoutingModule {}
