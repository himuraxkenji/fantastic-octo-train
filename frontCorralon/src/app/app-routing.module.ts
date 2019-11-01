import { LogoutComponent } from './logout/logout.component';
import { LoginComponent } from './login/login.component';
import { NgModule } from "@angular/core";
import { Routes, RouterModule } from "@angular/router";

const routes: Routes = [
  { path: "ventas", loadChildren: "./ventas/ventas.module#VentasModule" },
  { path: "compras", loadChildren: "./compras/compras.module#ComprasModule" },
  { path: "abm-ventas", loadChildren: "./abm-ventas/abm-ventas.module#AbmVentasModule"},
  { path: "abm-compras", loadChildren: "./abm-compras/abm-compras.module#AbmComprasModule"},
  { path: 'login', component: LoginComponent},
  { path: 'logout', component: LogoutComponent}

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule {}
