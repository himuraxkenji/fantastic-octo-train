import { Departamento } from "./../../modelo/Departamento";
import { ActivatedRoute } from "@angular/router";
import { VentasService } from "src/app/service/ventas.service";
import { Distrito } from "./../../modelo/Distrito";
import { Component, OnInit } from "@angular/core";

@Component({
  selector: "app-modificar-distrito",
  templateUrl: "./modificar-distrito.component.html",
  styleUrls: ["./modificar-distrito.component.css"]
})
export class ModificarDistritoComponent implements OnInit {
  distrito: Distrito = new Distrito();
  departamentosFilter: Departamento[] = null;
  departamentos: Departamento[] = null;
  nombreDepto: string = null;
  idDepartamento: number = null;
  departamento: Departamento = null;

  constructor(private service: VentasService, private id: ActivatedRoute) {}

  ngOnInit() {
    this.service.listarDepartamentosHabilitados().subscribe(data => {
      this.departamentos = Object.keys(data.data).map(function(key) {
        return data.data[key];
      });
    });
    let id: number;
    this.id.params.subscribe(data => (id = data["id"]));
    console.log("se muestra -->" + id);
    this.service.listarDistritoId(id).subscribe(data => {
      this.distrito = data.data;
    });
  }
  actualizarDistrito(distrito: Distrito) {
    this.distrito.idDepartamento = 1;
    this.distrito.idDepartamento = distrito.idDepartamento;
    this.departamentos.forEach(departamento => {
      if (departamento.nombre == this.nombreDepto) {
        this.distrito.idDepartamento = departamento.id;
      }
    });
    for (var i = distrito.idDepartamento; i < this.departamentos.length; i++) {
      if (this.departamentos[i].nombre == this.nombreDepto) {
        this.distrito.idDepartamento = this.departamentos[i].id;
      }
    }

    this.service.actualizarDistrito(distrito).subscribe(data => {
      this.distrito = data;
      alert("se actualizo con EXITO");
      window.history.back();
    });
  }
  cancelar() {
    window.history.back();
  }
  listarDepartamentos(filterVal: any) {
    if (filterVal == "0") this.departamentosFilter = this.departamentos;
    else
      this.departamentosFilter = this.departamentos.filter(
        item => item.nombre == filterVal
      );
  }
}
