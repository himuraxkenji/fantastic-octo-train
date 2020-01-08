import { AbmComprasService } from "./../../service/abm-compras.service";
import { ActivatedRoute } from "@angular/router";
import { ComprasService } from "./../../service/compras.service";
import { Rubro } from "./../../modelo/Rubro";
import { ArticuloDTO } from "./../../modelo/ArticuloDTO";
import { Articulo } from "./../../modelo/Articulo";
import { Component, OnInit } from "@angular/core";

@Component({
  selector: "app-modificar-articulo",
  templateUrl: "./modificar-articulo.component.html",
  styleUrls: ["./modificar-articulo.component.css"]
})
export class ModificarArticuloComponent implements OnInit {
  articulo: Articulo = new Articulo();
  articuloDTO: ArticuloDTO = new ArticuloDTO();

  rubrosFilter: Rubro[] = null;
  rubros: Rubro[] = null;
  rubroSelected: Rubro;
  nombreRubro: string = null;
  idRubro: number = null;
  rubro: Rubro;

  constructor(
    private serviceAbmCompra: AbmComprasService,
    private serviceCompra: ComprasService,
    private id: ActivatedRoute
  ) {}

  ngOnInit() {
    this.serviceAbmCompra.listarRubrosHabilitados().subscribe(data => {
      this.rubros = Object.keys(data.data).map(function(key) {
        return data.data[key];
      });
      // console.log("this.departamentos", this.departamentos);
      let id: number;
      this.id.params.subscribe(data => (id = data["id"]));
      console.log("se muestra -->" + id);

      this.serviceCompra.listarArticuloId(id).subscribe(data => {
        this.articulo = data.data;

        this.serviceAbmCompra
          .listarRubroId(this.articulo.rubroId.id)
          .subscribe(resp => {
            this.rubroSelected = resp.data;
            console.log("this.rubroSelected======>", this.rubroSelected);
          });
      });
    });
  }
  volverAtras() {
    window.history.back();
  }
  // -----------------
  actualizarSubRubro(articulo: Articulo) {
    this.articuloDTO.nombre = this.articulo.nombre;
    this.articuloDTO.id = articulo.id;
    this.articuloDTO.codigoArt = articulo.codigoArt;
    this.articuloDTO.habilitacion = articulo.habilitacion;
    this.articuloDTO.rubroId = articulo.rubroId.id;
    console.log(this.articuloDTO);

    this.serviceCompra
      .actualizarArticulo(this.articuloDTO)
      .subscribe(data => {
        this.articuloDTO = data;
        alert("SE ACTUALIZO EL SUB RUBRO " + this.articuloDTO.nombre);
        window.history.back();
      });
  }

  listarRubros(filterVal: any) {
    if (filterVal == "0") this.rubrosFilter = this.rubros;
    else
      this.rubrosFilter = this.rubros.filter(item => item.nombre == filterVal);
  }
}
