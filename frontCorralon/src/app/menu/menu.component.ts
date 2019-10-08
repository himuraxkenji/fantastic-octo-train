import { Router } from '@angular/router';
import { Component, OnInit } from '@angular/core';
@Component({
  selector: 'app-menu',
  templateUrl: './menu.component.html',
  styleUrls: ['./menu.component.css']
})
export class MenuComponent implements OnInit {

  constructor(private router:Router) { }

  ngOnInit() {
  }

  ventas(){
    this.router.navigate(['/ventas']);
  }
  compras(){
    this.router.navigate(['/ventas']);
  }
  seguridad(){
    this.router.navigate(['/ventas']);
  }
  reportes(){
    this.router.navigate(['/ventas']);
  }
  logistica(){
    this.router.navigate(['/ventas']);
  }

}
