import { Router } from '@angular/router';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-sub-menu',
  templateUrl: './sub-menu.component.html',
  styles: ['./sub-menu.component.css']
})
export class SubMenuComponent implements OnInit {

  constructor(private router: Router) { }

  ngOnInit() {
  }

}
