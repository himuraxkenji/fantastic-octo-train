import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Response } from "../modelo/Response";

@Injectable({
  providedIn: 'root'
})
export class AbmComprasService {

  Url = "//localhost:8081";

  constructor(private http: HttpClient) {}

  // SERVICE DE BANCOS
  listarBancosTodos() {
    return this.http.get<Response>(this.Url + "/bancos");
  }
}
