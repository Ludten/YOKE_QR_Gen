import { Module } from '@nestjs/common';
import { QRController } from './qrcode.controller';
import { QRService } from './qrcode.service';
import { MovieModule } from 'src/movies/movie.module';
import { PrismaModule } from 'src/prisma/prisma.module';

@Module({
  imports: [PrismaModule, MovieModule],
  exports: [QRService],
  controllers: [QRController],
  providers: [QRService],
})
export class QRModule {}
