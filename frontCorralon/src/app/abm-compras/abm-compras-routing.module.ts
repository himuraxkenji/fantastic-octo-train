import { AbmComprasComponent } from "./abm-compras.component";
import { NgModule } from "@angular/core";
import { Routes, RouterModule } from "@angular/router";
import { AbmBancoComponent } from "./abm-banco/abm-banco.component";

const routes: Routes = [
  {
    path: "",
    component: AbmComprasComponent,
    children: [{ path: "abm-banco", component: AbmBancoComponent }]
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class AbmComprasRoutingModule {}
