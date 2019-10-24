import { Router } from '@angular/router';
import { Component, OnInit } from '@angular/core';
@Component({
  selector: 'app-menu',
  templateUrl: './menu.component.html',
  styleUrls: ['./menu.component.css']
})
export class MenuComponent implements OnInit {
  abm : string;
  tipoABM: string;
  abms: string[] = null;

  constructor(private router:Router) { }

  ngOnInit() {
  }

  listarABM(){


  }
}
