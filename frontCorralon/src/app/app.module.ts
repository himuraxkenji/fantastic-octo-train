import { VentasService } from './service/ventas.service';
import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import {FormsModule} from '@angular/forms';
import {HttpClientModule} from '@angular/common/http';
import { VentasModule } from './ventas/ventas.module';
import { ComprasModule } from './compras/compras.module';
import { MenuComponent } from './menu/menu.component';
import { VentasComponent } from './ventas/ventas.component';

// import { ClienteModule } from './cliente/cliente.module';
// import { DireccionModule } from './direccion/direccion.module';
// import { DepartamentoModule } from './departamento/departamento.module';
// import { DitritoModule } from './distrito/ditrito.module';


@NgModule({
  declarations: [
    AppComponent, MenuComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    ComprasModule,
    FormsModule,
    HttpClientModule


  ],
  providers: [VentasService],
  bootstrap: [AppComponent]
})
export class AppModule { }
