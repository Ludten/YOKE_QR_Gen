import { Controller, Get, Param, Render, Res } from '@nestjs/common';
import { Response } from 'express';
import { QRService } from './qrcode.service';

@Controller('qrcode')
export class QRController {
  constructor(private qrService: QRService) {}

  @Get()
  async generateQRCode(@Res() res: Response) {
    try {
      const qrImage = await this.qrService.generateAndSaveQRCode();
      res.json({ qrImage });
    } catch (error) {
      console.error(error);
      res.status(500).send('Internal Server Error');
    }
  }

  @Get('random/:id')
  @Render('movies')
  async getQRCode(@Param('id') id: string, @Res() res: Response) {
    try {
      if (id && id !== undefined) {
        const movies = await this.qrService.randomMovies(id);
        return { movies };
      }
    } catch (error) {
      console.error(error);
      res.status(500).send('Internal Server Error');
    }
  }
}
