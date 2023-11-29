import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { DatabaseModule } from './database/database.module';
import { PlanesModule } from './planes/planes.module';
import { ReviewsModule } from './reviews/reviews.module';

@Module({
  imports: [DatabaseModule, PlanesModule, ReviewsModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
