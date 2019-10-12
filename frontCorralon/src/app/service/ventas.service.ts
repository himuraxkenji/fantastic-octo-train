import { Departamento } from "./../modelo/Departamento";
import { Injectable } from "@angular/core";
import { HttpClient } from "@angular/common/http";
import { Response } from "../modelo/Response";

@Injectable({
  providedIn: "root"
})
export class VentasService {
  Url = "//localhost:8081";

  constructor(private http: HttpClient) {}

  // Departamentos
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
}
