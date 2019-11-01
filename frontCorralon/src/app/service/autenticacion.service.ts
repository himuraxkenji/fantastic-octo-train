import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class AutenticacionService {

  constructor() { }
  autenticacion(nombreUsuario, password) {
    if (nombreUsuario === "jorgedat" && password === "carlito") {
      sessionStorage.setItem('nombreUsuario', nombreUsuario);
      return true;
    } else {
      return false;
    }
  }

  usuarioLogeado() {
    let usuario = sessionStorage.getItem('nombreUsuario')
    console.log(!(usuario === null))
    return !(usuario === null)
  }

  logOut() {
    sessionStorage.removeItem('nombreUsuario')
  }
}
