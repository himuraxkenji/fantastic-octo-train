import { TestBed } from '@angular/core/testing';

import { AbmComprasService } from './abm-compras.service';

describe('AbmComprasService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: AbmComprasService = TestBed.get(AbmComprasService);
    expect(service).toBeTruthy();
  });
});
