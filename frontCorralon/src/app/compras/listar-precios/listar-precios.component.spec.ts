import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ListarPreciosComponent } from './listar-precios.component';

describe('ListarPreciosComponent', () => {
  let component: ListarPreciosComponent;
  let fixture: ComponentFixture<ListarPreciosComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ListarPreciosComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ListarPreciosComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
