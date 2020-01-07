import { ArticuloDTO } from './../modelo/ArticuloDTO';
import { Articulo } from './../modelo/Articulo';
import { Proveedor } from './../modelo/Proveedor';
import { Response } from './../modelo/Response';
import { HttpClient } from '@angular/common/http';
import { Injectable } from "@angular/core";

@Injectable({
  providedIn: "root"
})
export class ComprasService {
  Url = "//localhost:8081";
  // Url ="http://192.168.1.100:8081";

  constructor(private http: HttpClient) {}

  listarProveedoresTodos() {
    return this.http.get<Response>(this.Url + "/proveedores");
  }
  listarProveedoresHabilitados() {
    return this.http.get<Response>(this.Url + "/proveedores/habilitados");
  }
  guardarProveedor(proveedor: Proveedor) {
    return this.http.post<Proveedor>(this.Url + "/proveedores/", proveedor);
  }

  // SERVICE TO ARTICULOS
  listarArticuloTodos() {
    return this.http.get<Response>(this.Url+ "/articulos");
  }
  listarArticuloHabilitados() {
    return this.http.get<Response>(this.Url+ "/articulos/habilitados");
  }
  guardarArticulo(articuloDTO: ArticuloDTO) {
    return this.http.post<ArticuloDTO>(this.Url + "/articulos/", articuloDTO);
  }
  actualizarArticulo(articuloDTO: ArticuloDTO) {
    return this.http.put<ArticuloDTO>(this.Url + "/articulos/", articuloDTO);
  }
  listarArticuloId(id: number) {
    return this.http.get<Response>(this.Url + "/articulos/" + id);
  }
  desabilitarArticulo(id: number) {
    return this.http.delete(this.Url + "/articulos/" + id);
  }
}
