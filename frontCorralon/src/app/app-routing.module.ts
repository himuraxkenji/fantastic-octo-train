<<<<<<< HEAD
=======
import { MenuComponent } from './menu/menu.component';
>>>>>>> bbfd0b022537c0435ae895db52e392bb8b2c0540
import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

const routes: Routes = [
  // {path: 'ventas', loadChildren: './ventas/ventas.module#VentasModule'}
  {path: 'menu', component: MenuComponent}
];


@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
