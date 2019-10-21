import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ListarSubrubroComponent } from './listar-subrubro.component';

describe('ListarSubrubroComponent', () => {
  let component: ListarSubrubroComponent;
  let fixture: ComponentFixture<ListarSubrubroComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ListarSubrubroComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ListarSubrubroComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
