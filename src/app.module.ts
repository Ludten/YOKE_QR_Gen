import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { QRModule } from './qrcode/qrcode.module';
import { MovieModule } from './movies/movie.module';

@Module({
  imports: [QRModule, MovieModule],
  controllers: [AppController],
})
export class AppModule {}
