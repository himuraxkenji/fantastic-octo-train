import { Distrito } from "./../modelo/Distrito";
import { Departamento } from "./../modelo/Departamento";
import { HttpClient } from "@angular/common/http";
import { Injectable } from "@angular/core";
import { Response } from "../modelo/Response";

@Injectable({
  providedIn: "root"
})
export class AbmVentasService {
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
    return this.http.put<Departamento>(
      this.Url + "/departamentos/",
      departamento
    );
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
    return this.http.put<Distrito>(this.Url + "/distritos/", distrito);
  }
  listarDistritoId(id: number) {
    return this.http.get<Response>(this.Url + "/distritos/" + id);
  }
  desabilitarDistrito(id: number) {
    return this.http.delete(this.Url + "/distritos/" + id);
  }
}