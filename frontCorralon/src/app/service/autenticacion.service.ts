import { HttpClient } from "@angular/common/http";
import { HttpHeaders } from "@angular/common/http";
import { Injectable } from "@angular/core";
import { map } from "rxjs/operators";

export class User {
  constructor(public status: string) {}
}

export class JwtResponse {
  constructor(public jwttoken: string) {}
}

@Injectable({
  providedIn: "root"
})
export class AutenticacionService {
  constructor(private httpClient: HttpClient) {}

  autenticacion(username, password) {
    return this.httpClient.post<any>('http://192.168.1.100:8081/authenticate',{username,password}).pipe(
      // return this.httpClient.post<any>('http://localhost:8081/authenticate',{username,password}).pipe(
     map(
       userData => {
        sessionStorage.setItem('username',username);
        let tokenStr= 'Bearer '+userData.token;
        sessionStorage.setItem('token', tokenStr);
        return userData;
       }
     )

    );
  }

  usuarioLogeado() {
    let usuario = sessionStorage.getItem("username");
    return !(usuario === null);
  }

  logOut() {
    sessionStorage.removeItem("username");
  }
}
