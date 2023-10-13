import { Module } from '@nestjs/common';
import { MovieService } from './movie.service';
import { PrismaModule } from 'src/prisma/prisma.module';

@Module({
  imports: [PrismaModule],
  exports: [MovieService],
  providers: [MovieService],
})
export class MovieModule {}
