import { NgModule } from "@angular/core";
import { Routes, RouterModule } from "@angular/router";

const routes: Routes = [
  { path: "ventas", loadChildren: "./ventas/ventas.module#VentasModule" },
  { path: "compras", loadChildren: "./compras/compras.module#ComprasModule" },
  { path: "abm-ventas", loadChildren: "./configuracion/abm-ventas.module#AbmVentasModule"}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule {}
