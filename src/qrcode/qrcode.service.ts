import {
  BadRequestException,
  Injectable,
  InternalServerErrorException,
} from '@nestjs/common';
import * as QRCode from 'qrcode';
import { Cron, CronExpression } from '@nestjs/schedule';

import { v4 as uuidv4 } from 'uuid';
import 'dotenv/config';

import { MovieService } from '../movies/movie.service';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class QRService {
  constructor(
    private prismaService: PrismaService,
    private movieService: MovieService,
  ) {}

  @Cron(CronExpression.EVERY_10_SECONDS)
  async generateAndSaveQRCode() {
    const randomMovies = await this.movieService.findRandomMovies();
    const uid = uuidv4();
    const qrData = `${process.env.URL}/qrcode/random/${uid}`;

    try {
      const qrImage = await QRCode.toDataURL(qrData);

      // eslint-disable-next-line @typescript-eslint/no-unused-vars
      const qrCode = await this.prismaService.qRcode.create({
        data: {
          uid,
          link: qrData,
          randomMovies: { createMany: { data: randomMovies } },
          image: qrImage,
        },
      });
      return qrImage;
    } catch (error) {
      console.error(error);
      throw new InternalServerErrorException();
    }
  }

  async randomMovies(u_id: string) {
    if (u_id === null || u_id === undefined) {
      throw new BadRequestException('Something bad happened');
    }

    try {
      const code = await this.prismaService.qRcode.findFirst({
        include: { randomMovies: true },
        where: { uid: u_id },
      });
      return code.randomMovies;
    } catch (error) {
      throw new InternalServerErrorException('error in database');
    }
  }
}
