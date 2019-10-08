import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { BajaDepartamentoComponent } from './baja-departamento.component';

describe('BajaDepartamentoComponent', () => {
  let component: BajaDepartamentoComponent;
  let fixture: ComponentFixture<BajaDepartamentoComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ BajaDepartamentoComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(BajaDepartamentoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
