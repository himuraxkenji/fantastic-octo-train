import { HttpClient } from '@angular/common/http';
import { HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { map } from 'rxjs/operators';

export class User{
  constructor(
    public status:string,
     ) {}

}
@Injectable({
  providedIn: 'root'
})
export class AutenticacionService {

  constructor(private httpClient:HttpClient) { }

  autenticacion(nombreUsuario, password) {
    const headers = new HttpHeaders({ Authorization: 'Basic ' + btoa(nombreUsuario + ':' + password) });
    console.log("aautoro");

    console.log(headers);

    return this.httpClient.get<User>('http://localhost:8081/clientes/login',{headers}).pipe(
     map(
       datoUsuario => {
        sessionStorage.setItem('nombreUsuario',nombreUsuario);
        let cadenaAutenticacion = 'Basic ' + btoa(nombreUsuario + ':' + password);
        sessionStorage.setItem('basicauth', cadenaAutenticacion);
        return datoUsuario;
       }
     )

    );
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
