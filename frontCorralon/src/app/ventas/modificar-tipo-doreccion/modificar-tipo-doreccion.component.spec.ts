import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ModificarTipoDoreccionComponent } from './modificar-tipo-doreccion.component';

describe('ModificarTipoDoreccionComponent', () => {
  let component: ModificarTipoDoreccionComponent;
  let fixture: ComponentFixture<ModificarTipoDoreccionComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ModificarTipoDoreccionComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ModificarTipoDoreccionComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
