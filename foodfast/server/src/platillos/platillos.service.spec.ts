import { Test, TestingModule } from '@nestjs/testing';
import { PlatillosService } from './platillos.service';

describe('PlatillosService', () => {
  let service: PlatillosService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [PlatillosService],
    }).compile();

    service = module.get<PlatillosService>(PlatillosService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
