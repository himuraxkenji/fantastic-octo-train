import { TestBed } from '@angular/core/testing';

import { AbmVentasService } from './abm-ventas.service';

describe('AbmVentasService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: AbmVentasService = TestBed.get(AbmVentasService);
    expect(service).toBeTruthy();
  });
});
