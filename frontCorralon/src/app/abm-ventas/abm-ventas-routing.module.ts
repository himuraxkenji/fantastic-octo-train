import { ModificarDistritoComponent } from './../abm-ventas/modificar-distrito/modificar-distrito.component';
import { AgregarDepartamentoComponent } from "./agregar-departamento/agregar-departamento.component";
import { AgregarDistritoComponent } from "./../abm-ventas/agregar-distrito/agregar-distrito.component";
import { ListarDistritosComponent } from "../abm-ventas/listar-distritos/listar-distritos.component";
import { ModificarDepartamentoComponent } from "./modificar-departamento/modificar-departamento.component";
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
      { path: "listar-distritos", component: ListarDistritosComponent },
      { path: "agregar-departamento", component: AgregarDepartamentoComponent },
      { path: "agregar-distrito", component: AgregarDistritoComponent },
      {
        path: "modificar-departamento/:id",
        component: ModificarDepartamentoComponent
      },
      {path : "modificar-distrito/:id", component: ModificarDistritoComponent}
    ]
  }
];
@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class AbmVentasRoutingModule {}
