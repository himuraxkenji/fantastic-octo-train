import { Router } from "@angular/router";
import { Component, OnInit } from "@angular/core";
@Component({
  selector: "app-menu",
  templateUrl: "./menu.component.html",
  styleUrls: ["./menu.component.css"]
})
export class MenuComponent implements OnInit {
  abm: string = "ABM VENTAS";
  tipoABM: string;
  abms: string[] = ["ABM VENTAS", "ABM COMPRAS", "ABM SEGURIDAD"];

  constructor(private router: Router) {}

  ngOnInit() {}

  listarABM() {
    // this.abms = ["ABM VENTAS", "ABM COMPRAS", "ABM SEGURIDAD"];
  }
}
