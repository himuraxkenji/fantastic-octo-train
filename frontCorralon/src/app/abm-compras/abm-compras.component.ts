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
  validMenu() {
    if (this.router.url.includes("/abm-banco")) return false;
    else return true;
  }

  ngOnInit() {}
}
