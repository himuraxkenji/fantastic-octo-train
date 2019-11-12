import { Router } from '@angular/router';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-compras',
  templateUrl: './compras.component.html',
  styleUrls: ['./compras.component.css']
})
export class ComprasComponent implements OnInit {

  constructor(private router: Router) { }

  ngOnInit() {
  }
  validaMenu() {
    if (
      this.router.url.includes("/listar-proveedor") ||
      this.router.url.includes("/agregar-proveedor")
    )
      return false;
    else return true;
  }

}
