import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AbmBancoComponent } from './abm-banco.component';

describe('AbmBancoComponent', () => {
  let component: AbmBancoComponent;
  let fixture: ComponentFixture<AbmBancoComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AbmBancoComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AbmBancoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
