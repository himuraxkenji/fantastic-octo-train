import { Response } from './../modelo/Response';
import { HttpClient } from '@angular/common/http';
import { Injectable } from "@angular/core";

@Injectable({
  providedIn: "root"
})
export class ComprasService {
  Url = "//localhost:8081";

  constructor(private http: HttpClient) {}

  listarProveedoresTodos() {
    return this.http.get<Response>(this.Url + "/proveedores");
  }
  listarProveedoresHabilitados() {
    return this.http.get<Response>(this.Url + "/proveedores/habilitados");
  }
}
