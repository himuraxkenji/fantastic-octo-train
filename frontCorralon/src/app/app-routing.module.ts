import { NgModule } from "@angular/core";
import { Routes, RouterModule } from "@angular/router";

const routes: Routes = [
  { path: "ventas", loadChildren: "./ventas/ventas.module#VentasModule" },
  { path: "compras", loadChildren: "./compras/compras.module#ComprasModule" },
  {
    path: "configuracion",
    loadChildren: "./configuracion/configuracion.module#ConfiguracionModule"
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule {}
