import { LogoutComponent } from './logout/logout.component';
import { LoginComponent } from './login/login.component';
import { NgModule } from "@angular/core";
import { Routes, RouterModule } from "@angular/router";
import { AuthGaurdService } from './service/auth-gaurd.service';

const routes: Routes = [
  { path: "ventas", loadChildren: "./ventas/ventas.module#VentasModule", canActivate:[AuthGaurdService]},
  { path: "compras", loadChildren: "./compras/compras.module#ComprasModule", canActivate:[AuthGaurdService] },
  { path: "abm-ventas", loadChildren: "./abm-ventas/abm-ventas.module#AbmVentasModule", canActivate:[AuthGaurdService]},
  { path: "abm-compras", loadChildren: "./abm-compras/abm-compras.module#AbmComprasModule",  canActivate:[AuthGaurdService]},
  { path: 'login', component: LoginComponent},
  { path: 'logout', component: LogoutComponent, canActivate:[AuthGaurdService]}

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule {}
