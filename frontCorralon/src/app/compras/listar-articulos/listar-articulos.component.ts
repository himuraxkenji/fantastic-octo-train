import { Router } from "@angular/router";
import { ComprasService } from "./../../service/compras.service";
import { Articulo } from "./../../modelo/Articulo";
import { Component, OnInit, ViewChild, ElementRef } from "@angular/core";
import jsPDF from "jspdf";
import "jspdf-autotable";
import { ExcelExportService } from "../../service/excel-export.service";
import { ArticuloExcel } from '../../modelo/ArticuloExcel';

@Component({
  selector: "app-listar-articulos",
  templateUrl: "./listar-articulos.component.html",
  styleUrls: ["./listar-articulos.component.css"],
})
export class ListarArticulosComponent implements OnInit {
  // articulo: Articulo = null;
  @ViewChild("listArt", { static: false }) content: ElementRef;

  articulos: Articulo[] = [];
  articulosFilter: Articulo[] = [];

  busqueda: string = null;
  busquedaRubro: string = null;
  busquedaCodigo: string = null;
  loaded: boolean = false;

  export: boolean = true;
  constructor(
    private serviceCompra: ComprasService,
    private router: Router,
    private excelService: ExcelExportService
  ) {}

  ngOnInit() {
    this.fetchEvent().then(() => {
      console.log(this.articulos);
    });
    localStorage.clear();
    localStorage.setItem("listar", "true");
  }

  fetchEvent() {
    return this.serviceCompra
      .listarArticuloTodos()
      .toPromise()
      .then((data) => {
        // subscribe(data => {
        this.articulos = data.data;
        this.articulosFilter = this.articulos;
        console.info("Articulos");
        console.info(data.data);
        console.info("ArticulosFilter");

        console.info(this.articulosFilter);
      });
  }

  modificarArticulo(articulo: Articulo) {
    this.router.navigate(["compras/modificar-articulo/" + articulo.id]);
  }
  deshabilitarArticulo(articulo: Articulo) {
    let resultado: boolean;
    resultado = confirm("¿DESEA DESHABILITAR ESTE ARTICULO?");
    if (resultado === true) {
      this.serviceCompra.desabilitarArticulo(articulo.id).subscribe((data) => {
        window.location.reload();
      });
    }
  }
  filtrarArticuloNombre(event: any) {
    if (this.busqueda !== null) {
      this.articulosFilter = this.articulos.filter((item) => {
        if (item.nombre.toUpperCase().includes(this.busqueda.toUpperCase())) {
          return item;
        }
      });
    } else {
      this.articulosFilter = this.articulos;
    }
  }
  filtrarArticuloCodigo(event: any) {
    if (this.busquedaCodigo !== null) {
      this.articulosFilter = this.articulos.filter((item) => {
        if (
          item.codigoArt
            .toUpperCase()
            .includes(this.busquedaCodigo.toUpperCase())
        ) {
          return item;
        }
      });
    } else {
      this.articulosFilter = this.articulos;
    }
  }
  filtrarArticuloRubro(event: any) {
    console.log("================ENTRO================");

    if (this.busquedaRubro !== null) {
      this.articulosFilter = this.articulos.filter((item) => {
        if (item.rubroId !== null) {
          if (
            item.rubroId.nombre
              .toUpperCase()
              .includes(this.busquedaRubro.toUpperCase())
          ) {
            return item;
          }
        }
      });
    } else {
      this.articulosFilter = this.articulos;
    }
  }

  backPage() {
    window.history.back();
  }
  exportarPDF() {
    this.export = false;
    const doc = new jsPDF();
    doc.autoTable({ html: "#listArt" });
    doc.save("table.pdf");
    this.export = true;
  }
  exportarExcel(): void {
    const articulosExcel = [];

    // for (let index = 0; index < this.articulosFilter.length; index++) {
    //     articulosExcel[index].codigoArt = this.articulosFilter[index].codigoArt;      
    //     articulosExcel[index].nombre = this.articulosFilter[index].nombre;      
    //     articulosExcel[index].stockMin = this.articulosFilter[index].stockMin;      
    //     articulosExcel[index].stockMax = this.articulosFilter[index].stockMax;      
    // }

    this.excelService.exportToExcel(this.articulosFilter, "articulos");
  }
}
