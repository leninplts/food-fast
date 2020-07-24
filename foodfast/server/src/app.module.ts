import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { UsersModule } from './users/users.module';
import { RestaurantModule } from './restaurant/restaurant.module';
import { PlatillosModule } from './platillos/platillos.module';

@Module({
  imports: [UsersModule, RestaurantModule, PlatillosModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
