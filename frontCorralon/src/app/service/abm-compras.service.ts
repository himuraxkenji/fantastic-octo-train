import { FormaPago } from './../modelo/FormaPago';
import { Marca } from './../modelo/Marca';
import { Banco } from "./../modelo/Banco";
import { HttpClient } from "@angular/common/http";
import { Injectable } from "@angular/core";
import { Response } from "../modelo/Response";

@Injectable({
  providedIn: "root"
})
export class AbmComprasService {
// DE MANERA LOCAL
  // Url = "//localhost:8081";
  Url ="http://192.168.1.14:8081";

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

  //SERVICE DE MARCAS
  listarMarcaTodos() {
    return this.http.get<Response>(this.Url+ "/marcas");
    // return this.http.get<Response>('../../assets/mocks/marca.json');
  }
  guardarMarca(marca: Marca) {
    return this.http.post<Marca>(this.Url + "/marcas/", marca);
    // return this.http.post<Response>('../../assets/mocks/marca.json', marca.);
  }
  actualizarMarca(marca: Marca) {
    return this.http.put<Marca>(this.Url + "/marcas/", marca);
  }
  listarMarcaId(id: number) {
    return this.http.get<Response>(this.Url + "/marcas/" + id);
  }

 //SERVICE DE FORMA DE PAGO
 listarFormaPagoTodos() {
  return this.http.get<Response>(this.Url+ "/forma-pago");
}
guardarFormaPago(formaPago: FormaPago) {
  return this.http.post<FormaPago>(this.Url + "/forma-pago/", formaPago);
}
actualizarFormaPago(formaPago: FormaPago) {
  return this.http.put<FormaPago>(this.Url + "/forma-pago/", formaPago);
}
listarformaPagoId(id: number) {
  return this.http.get<Response>(this.Url + "/forma-pago/" + id);
}

}
