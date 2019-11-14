import { Banco } from "./../modelo/Banco";
import { HttpClient } from "@angular/common/http";
import { Injectable } from "@angular/core";
import { Response } from "../modelo/Response";

@Injectable({
  providedIn: "root"
})
export class AbmComprasService {
  Url = "//localhost:8081";

  constructor(private http: HttpClient) {}

  // SERVICE DE BANCOS
  listarBancosTodos() {
    return this.http.get<Response>(this.Url + "/bancos");
  }
  guardarBanco(banco: Banco) {
    return this.http.post<Banco>(this.Url + "/bancos/", banco);
  }
  actualizarBanco(banco: Banco) {
    return this.http.put<Banco>(this.Url + "/bancos/", banco);
  }
  listarBancoId(id: number) {
    return this.http.get<Response>(this.Url + "/bancos/" + id);
  }
  desabilitarBanco(id: number) {
    return this.http.delete(this.Url + "/bancos/" + id);
  }
}
