import { AutenticacionService } from './../service/autenticacion.service';
import { Router } from '@angular/router';
import { Component, OnInit } from "@angular/core";

@Component({
  selector: "app-login",
  templateUrl: "./login.component.html",
  styleUrls: ["./login.component.css"]
})
export class LoginComponent implements OnInit {
  nombreUsuario = "jorgedat";
  password = "carlito";
  loginInvalido = false;

  constructor(private router:Router, private autenticacion:AutenticacionService) {}

  ngOnInit() {}

  chequearLogueo(){
    if(this.autenticacion.autenticacion(this.nombreUsuario, this.password)){
        this.router.navigate['/ventas'];
        this.loginInvalido = false;
    }else{
      this.loginInvalido = true;
    }
  }
}
