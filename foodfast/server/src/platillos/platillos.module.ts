import { Module } from '@nestjs/common';
import { PlatillosController } from './platillos.controller';
import { PlatillosService } from './platillos.service';

@Module({
  controllers: [PlatillosController],
  providers: [PlatillosService]
})
export class PlatillosModule {}
