import { BasicAuthHtppInterceptorServiceService } from './service/basic-auth-htpp-interceptor-service.service';
import { VentasService } from './service/ventas.service';
import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import {FormsModule} from '@angular/forms';
import {HttpClientModule, HTTP_INTERCEPTORS} from '@angular/common/http';
import { MenuComponent } from './menu/menu.component';
import { LoginComponent } from './login/login.component';
import { LogoutComponent } from './logout/logout.component';


@NgModule({
  declarations: [
    AppComponent,
    MenuComponent,
    LoginComponent,
    LogoutComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    HttpClientModule,
  ],
  providers: [VentasService,
    {provide:HTTP_INTERCEPTORS, useClass: BasicAuthHtppInterceptorServiceService, multi:true }
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
