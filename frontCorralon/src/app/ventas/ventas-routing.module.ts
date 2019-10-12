import { AgregarDistritoComponent } from './agregar-distrito/agregar-distrito.component';
import { ListarDistritosComponent } from './listar-distritos/listar-distritos.component';
import { VentasComponent } from './ventas.component';
import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { ListarDepartamentoComponent } from './listar-departamento/listar-departamento.component';
import { AgregarDepartamentoComponent } from './agregar-departamento/agregar-departamento.component';
import { ModificarDepartamentoComponent } from './modificar-departamento/modificar-departamento.component';

const routes: Routes = [
    {path: '', component: VentasComponent,
    children:[
      {path: 'listar-departamentos', component: ListarDepartamentoComponent},
      {path: 'agregar-departamento', component: AgregarDepartamentoComponent},
      {path: 'modificar-departamento/:id', component: ModificarDepartamentoComponent},
      {path: 'listar-distritos', component: ListarDistritosComponent},
      {path: 'agregar-distrito', component: AgregarDistritoComponent}

    ]}
  ];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class VentasRoutingModule { }
