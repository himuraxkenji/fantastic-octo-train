import { AgregarBancoComponent } from "./agregar-banco/agregar-banco.component";
import { AbmComprasComponent } from "./abm-compras.component";
import { NgModule } from "@angular/core";
import { Routes, RouterModule } from "@angular/router";
import { AbmBancoComponent } from "./abm-banco/abm-banco.component";

const routes: Routes = [
  {
    path: "",
    component: AbmComprasComponent,
    children: [
      { path: "abm-banco", component: AbmBancoComponent },
      { path: "agregar-banco", component: AgregarBancoComponent }
    ]
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class AbmComprasRoutingModule {}
