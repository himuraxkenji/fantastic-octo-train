import { ListarBancoComponent } from "./listar-banco/listar-banco.component";
import { ConfiguracionComponent } from "./configuracion.component";
import { NgModule } from "@angular/core";
import { Routes, RouterModule } from "@angular/router";

const routes: Routes = [
  {
    path: '',
    component: ConfiguracionComponent,
    children: [{ path: 'listar-banco', component: ListarBancoComponent }
  ]}
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class ConfiguracionRoutingModule {}
