import { Router } from '@angular/router';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-sub-menu',
  templateUrl: './sub-menu.component.html',
  styles: []
})
export class SubMenuComponent implements OnInit {

  constructor(private router: Router) { }

  ngOnInit() {
  }
  // departamentos(){
  //   this.router.navigate(['ventas/listar-departamentos']);
  // }

}
