import { TipoDireccion } from './../modelo/tipoDireccion';
import { Cliente } from "./../modelo/Cliente";
import { Distrito } from "./../modelo/Distrito";
import { Departamento } from "./../modelo/Departamento";
import { Injectable } from "@angular/core";
import { HttpClient, HttpHeaders } from "@angular/common/http";
import { Response } from "../modelo/Response";

@Injectable({
  providedIn: "root"
})
export class VentasService {
  Url = "//localhost:8081";

  constructor(private http: HttpClient) {}

  // SERVICE DEPARTAMENTOS
  listarDepartamentosTodos() {
    return this.http.get<Response>(this.Url + "/departamentos");
  }

  listarDepartamentosHabilitados() {
    return this.http.get<Response>(this.Url + "/departamentos/habilitados");
  }

  listarDepartamentoId(id: number) {
    return this.http.get<Response>(this.Url + "/departamentos/" + id);
  }

  guardarDepartamento(departamento: Departamento) {
    return this.http.post<Departamento>(
      this.Url + "/departamentos/",
      departamento
    );
  }

  actualizarDepartamento(departamento: Departamento) {
    return this.http.put<Departamento>(this.Url + "/departamentos/",departamento);
  }

  deshabilitarDepartamento(id: number) {
    return this.http.delete(this.Url + "/departamentos/" + id);
  }

  // ********************SERVICE DISTRITOS***********************
  listarDistritosHabilitados() {
    return this.http.get<Response>(this.Url + "/distritos/habilitado");
  }
  guardarDistrito(distrito: Distrito) {
    return this.http.post<Distrito>(this.Url + "/distritos/", distrito);
  }
  actualizarDistrito(distrito: Distrito) {
    //  console.log('*******'+distrito+'********');

    // console.log('nro departamanto --> ' + distrito.idDepartamento);
    return this.http.put<Distrito>(this.Url + "/distritos/", distrito);
  }
  listarDistritoId(id: number) {
    return this.http.get<Response>(this.Url + "/distritos/" + id);
  }
  desabilitarDistrito(id: number) {
    return this.http.delete(this.Url + "/distritos/" + id);
  }
  // *********************SERVICE CLIENTE********************

  listarClientesTodos() {
    let nombreUsuario='jorgedat';
    let password='carlito';

    const headers = new HttpHeaders({ Authorization: 'Basic ' + btoa(nombreUsuario + ':' + password) });
    return this.http.get<Response>('http://localhost:8081/clientes',{headers});
  }

  // listarClientesTodos() {
  //   return this.http.get<Response>(this.Url + "/clientes");
  // }
  listarClientesHabilitados() {
    return this.http.get<Response>(this.Url + "/clientes/habilitados");
  }
  guardarCliente(cliente: Cliente) {
    return this.http.post<Cliente>(this.Url + "/clientes/", cliente);
  }
  listarClienteId(id: number) {
    return this.http.get<Response>(this.Url + "/clientes/" + id);
  }
  actualizarCliente(cliente: Cliente) {
    return this.http.put<Cliente>(this.Url + "/clientes/", cliente);
  }
  deshabilitarCliente(id: number) {
    return this.http.delete(this.Url + "/clientes/" + id);
  }
  // *********************SERVICE TIPO DIRECCION********************
  listarTipoDireccionTodos() {
    return this.http.get<Response>(this.Url + "/tipo-direccion");
  }
  listarTipoDireccionHabilitados() {
    return this.http.get<Response>(this.Url + "/tipo-direccion/habilitados");
  }
  listarTipoDireccionId(id: number) {
    return this.http.get<Response>(this.Url + "/tipo-direccion/" + id);
  }
  guardarTipoDireccion(tipoDireccion: TipoDireccion) {
    return this.http.post<TipoDireccion>(this.Url + "/tipo-direccion/", tipoDireccion);
  }
  actualizarTipoDireccion(tipoDireccion: TipoDireccion) {
    return this.http.put<TipoDireccion>(this.Url + "/tipo-direccion/", tipoDireccion);
  }
  deshabilitarTipoDireccion(id: number) {
    return this.http.delete(this.Url + "/tipo-direccion/" + id);
  }
}
