import { Injectable, InternalServerErrorException } from '@nestjs/common';
import { Movie } from '@prisma/client';

import * as moviesjson from '../movies.json';

@Injectable()
export class MovieService {
  async findRandomMovies(): Promise<Movie[]> {
    try {
      const jsonData = [];
      for (const i in moviesjson) jsonData.push(moviesjson[i]);
      const count = 10;

      if (!Array.isArray(jsonData) || jsonData.length === 0 || count <= 0) {
        throw new InternalServerErrorException();
      }

      const shuffledArray = jsonData.sort(() => Math.random() - 0.5);

      for (let idx = 0; idx < shuffledArray.length; idx++) {
        const element = shuffledArray[idx];
        for (const name in element) {
          if (name !== 'Title' && name !== 'Images') {
            delete element[name];
          }
        }
      }

      return shuffledArray.slice(0, count) as unknown as Movie[];
    } catch (error) {
      console.error('Error reading JSON file:', error);
      throw new InternalServerErrorException();
    }
  }
}
