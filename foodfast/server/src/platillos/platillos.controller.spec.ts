import { Test, TestingModule } from '@nestjs/testing';
import { PlatillosController } from './platillos.controller';

describe('Platillos Controller', () => {
  let controller: PlatillosController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [PlatillosController],
    }).compile();

    controller = module.get<PlatillosController>(PlatillosController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
