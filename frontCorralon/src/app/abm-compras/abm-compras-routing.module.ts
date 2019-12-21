import { ModificarMarcaComponent } from "./modificar-marca/modificar-marca.component";
import { AgregarMarcaComponent } from "./agregar-marca/agregar-marca.component";
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
      { path: "agregar-marca", component: AgregarMarcaComponent },
      { path: "listar-banco", component: ListarBancoComponent },
      { path: "listar-marca", component: ListarMarcaComponent },
      { path: "modificar-banco/:id", component: ModificarBancoComponent },
      { path: "modificar-marca/:id", component: ModificarMarcaComponent }
    ]
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class AbmComprasRoutingModule {}
