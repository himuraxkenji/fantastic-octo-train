import { ModificarDepartamentoComponent } from "./modificar-departamento/modificar-departamento.component";
import { AgregarDepartamentoComponent } from "./agregar-departamento/agregar-departamento.component";
import { ListarDepartamentoComponent } from "./listar-departamento/listar-departamento.component";
import { AbmVentasComponent } from "./abm-ventas.component";
import { NgModule } from "@angular/core";
import { Routes, RouterModule } from "@angular/router";

const routes: Routes = [
  {
    path: "",
    component: AbmVentasComponent,
    children: [
      { path: "listar-departamento", component: ListarDepartamentoComponent },
      { path: "agregar-departamento", component: AgregarDepartamentoComponent },
      {
        path: "modificar-departamento/:id",
        component: ModificarDepartamentoComponent
      }
    ]
  }
];
@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class AbmVentasRoutingModule {}
