import { Router } from "@angular/router";
import { Component, OnInit } from "@angular/core";

@Component({
  selector: "app-abm-compras",
  templateUrl: "./abm-compras.component.html",
  styleUrls: ["./abm-compras.component.css"]
})
export class AbmComprasComponent implements OnInit {
  menuDeplegado = true;

  constructor(private router: Router) {}
  validaMenu() {
    if (
      this.router.url.includes("/listar-banco") ||
      this.router.url.includes("/listar-marca") ||
      this.router.url.includes("/agregar-banco") ||
      this.router.url.includes("/agregar-marca") ||
      this.router.url.includes("/modificar-marca") ||
      this.router.url.includes("/modificar-banco")
    )
      return false;
    else return true;
  }

  ngOnInit() {}
}
