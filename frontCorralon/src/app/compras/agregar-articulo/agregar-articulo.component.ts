import { Proveedor } from './../../modelo/Proveedor';
import { Marca } from "./../../modelo/Marca";
import { Rubro } from "./../../modelo/Rubro";
import { AbmComprasService } from "src/app/service/abm-compras.service";
import { Router } from "@angular/router";
import { ComprasService } from "./../../service/compras.service";
import { UnidadMedida } from "./../../modelo/UnidadMedida";
import { ArticuloDTO } from "./../../modelo/ArticuloDTO";
import { Component, OnInit } from "@angular/core";

@Component({
  selector: "app-agregar-articulo",
  templateUrl: "./agregar-articulo.component.html",
  styleUrls: ["./agregar-articulo.component.css"]
})
export class AgregarArticuloComponent implements OnInit {
  articuloDTO: ArticuloDTO = new ArticuloDTO();

  unidadMedidas: UnidadMedida[] = null;
  unidadMedidasFilter: UnidadMedida[] = null;
  idUnidadMedida: number = 1;
  nombreUnidadMedida: string = null;

  rubros: Rubro[] = null;
  rubroFilter: Rubro[] = null;
  idRubro: number = null;
  nombreRubro: string = null;

  marcas: Marca[] = null;
  marcasFilter: Marca[] = null;
  idMarca: number = 1;
  nombreMarca: string = null;

  proveedores: Proveedor[] = null;
  proveedoresFilter: Proveedor[] = null;
  idProveedor: number = 1;
  nombreProveedor: string = null;

  constructor(
    private serviceAbmCompra: AbmComprasService,
    private serviceCompra: ComprasService,
    private router: Router
  ) {}

  ngOnInit() {
    this.serviceAbmCompra.listarUnidadMedidaTodos().subscribe(data => {
      this.unidadMedidas = Object.keys(data.data).map(function(key) {
        return data.data[key];
      });
      this.unidadMedidasFilter = this.unidadMedidas.sort((a, b) => a.nombre.length - b.nombre.length);

    });
    this.serviceAbmCompra.listarRubrosTodos().subscribe(data => {
      this.rubros = Object.keys(data.data).map(function(key) {
        return data.data[key];
      });
      this.rubroFilter = this.rubros;
      this.rubroFilter.sort((a, b) => a.nombre.length - b.nombre.length);
    });
    this.serviceAbmCompra.listarMarcaHabilitados().subscribe(data => {
      this.marcas = Object.keys(data.data).map(function(key) {
        return data.data[key];
      });
      this.marcasFilter = this.marcas.sort((a, b) => a.nombre.length - b.nombre.length);
    });
    this.serviceCompra.listarProveedoresHabilitados().subscribe(data => {
      this.proveedores = Object.keys(data.data).map(function(key) {
        return data.data[key];
      });
      this.proveedoresFilter = this.proveedores.sort((a, b) => a.razonSocial.length - b.razonSocial.length);;
    });
  }
  volverAtras() {
    window.history.back();
  }
  nuevoArticulo(articuloDTO: ArticuloDTO) {
    // this.articuloDTO.unidadMedidaId = 1;

    this.unidadMedidas.forEach(unidadMedida => {
      if (unidadMedida.nombre == this.nombreUnidadMedida) {
        this.articuloDTO.id = unidadMedida.id;
      }
    });

    for (var i = 0; i < this.unidadMedidas.length; i++) {
      if (this.unidadMedidas[i].nombre == this.nombreUnidadMedida) {
        this.articuloDTO.unidadMedidaId = this.unidadMedidas[i].id;
      }
    }
    this.rubros.forEach(rubro => {
      if (rubro.nombre == this.nombreRubro) {
        this.articuloDTO.id = rubro.id;
      }
    });

    for (var i = 0; i < this.rubros.length; i++) {
      if (this.rubros[i].nombre == this.nombreRubro) {
        this.articuloDTO.rubroId = this.rubros[i].id;
      }
    }
    this.marcas.forEach(marca => {
      if (marca.nombre == this.nombreMarca) {
        this.articuloDTO.id = marca.id;
      }
    });

    for (var i = 0; i < this.marcas.length; i++) {
      if (this.marcas[i].nombre == this.nombreMarca) {
        this.articuloDTO.marcaId = this.marcas[i].id;
      }
    }
    this.proveedores.forEach(proveedor => {
      if (proveedor.razonSocial == this.nombreProveedor) {
        this.articuloDTO.id = proveedor.id;
      }
    });

    for (var i = 0; i < this.proveedores.length; i++) {
      if (this.proveedores[i].razonSocial == this.nombreProveedor) {
        this.articuloDTO.proveedorId = this.proveedores[i].id;
      }
    }
    articuloDTO.habilitacion = 1;
    // articuloDTO.marcaId=1;
    articuloDTO.formaPagoId = 1;
    // articuloDTO.proveedorId = 1;
    // articuloDTO.rubroId=1;
    articuloDTO.subRubroId = 1;

    // this.subRubroDTO.habilitacion = 1;
    // this.articuloDTO.id= null;
    this.articuloDTO.nombre = articuloDTO.nombre.toUpperCase();
    this.articuloDTO.abreviatura = articuloDTO.abreviatura.toUpperCase();
    this.articuloDTO.codigoArt = articuloDTO.codigoArt.toUpperCase();
    this.articuloDTO.stockMin = articuloDTO.stockMin;
    this.articuloDTO.stockMax = articuloDTO.stockMax;
    this.articuloDTO.marcaId = articuloDTO.marcaId;
    this.articuloDTO.proveedorId = articuloDTO.proveedorId;
    this.articuloDTO.rubroId = articuloDTO.rubroId;
    this.articuloDTO.subRubroId = articuloDTO.subRubroId;
    this.articuloDTO.formaPagoId = articuloDTO.formaPagoId;

    this.serviceCompra.guardarArticulo(this.articuloDTO).subscribe(data => {
      alert("SE GUARDO UN NUEVO ARTICULO");
      window.history.back();
    });
  }
  listarUnidadMedida(filterVal: any) {
    if (filterVal == "0") this.unidadMedidasFilter = this.unidadMedidas;
    else
      this.unidadMedidasFilter = this.unidadMedidas.filter(
        item => item.nombre == filterVal
      );
  }
  listarRubros(filterVal: any) {
    if (filterVal == "0") this.rubroFilter = this.rubros;
    else
      this.rubroFilter = this.rubros.filter(item => item.nombre == filterVal);
  }
  listarMarcas(filterVal: any) {
    if (filterVal == "0") this.marcasFilter = this.marcas;
    else
      this.marcasFilter = this.marcas.filter(item => item.nombre == filterVal);
  }
  listarProveedores(filterVal: any) {
    if (filterVal == "0") this.proveedoresFilter = this.proveedores;
    else
      this.proveedoresFilter = this.proveedores.filter(item => item.razonSocial == filterVal);
  }
}
