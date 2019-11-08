import { Router } from "@angular/router";
import { Component, OnInit } from "@angular/core";

@Component({
  selector: "app-abm-ventas",
  templateUrl: "./abm-ventas.component.html",
  styleUrls: ["./abm-ventas.component.css"]
})
export class AbmVentasComponent implements OnInit {
  constructor(private router: Router) {}
  validMenu() {
    if (
      this.router.url.includes("/listar-distritos") ||
      this.router.url.includes("/listar-departamento")
    )
      return false;
    else return true;
  }
  ngOnInit() {}
}
