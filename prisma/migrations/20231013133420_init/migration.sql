/*
  Warnings:

  - You are about to drop the column `Actors` on the `Movie` table. All the data in the column will be lost.
  - You are about to drop the column `Awards` on the `Movie` table. All the data in the column will be lost.
  - You are about to drop the column `ComingSoon` on the `Movie` table. All the data in the column will be lost.
  - You are about to drop the column `Country` on the `Movie` table. All the data in the column will be lost.
  - You are about to drop the column `Director` on the `Movie` table. All the data in the column will be lost.
  - You are about to drop the column `Genre` on the `Movie` table. All the data in the column will be lost.
  - You are about to drop the column `Language` on the `Movie` table. All the data in the column will be lost.
  - You are about to drop the column `Metascore` on the `Movie` table. All the data in the column will be lost.
  - You are about to drop the column `Plot` on the `Movie` table. All the data in the column will be lost.
  - You are about to drop the column `Poster` on the `Movie` table. All the data in the column will be lost.
  - You are about to drop the column `Rated` on the `Movie` table. All the data in the column will be lost.
  - You are about to drop the column `Released` on the `Movie` table. All the data in the column will be lost.
  - You are about to drop the column `Response` on the `Movie` table. All the data in the column will be lost.
  - You are about to drop the column `Runtime` on the `Movie` table. All the data in the column will be lost.
  - You are about to drop the column `Type` on the `Movie` table. All the data in the column will be lost.
  - You are about to drop the column `Writer` on the `Movie` table. All the data in the column will be lost.
  - You are about to drop the column `Year` on the `Movie` table. All the data in the column will be lost.
  - You are about to drop the column `imdbID` on the `Movie` table. All the data in the column will be lost.
  - You are about to drop the column `imdbRating` on the `Movie` table. All the data in the column will be lost.
  - You are about to drop the column `imdbVotes` on the `Movie` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Movie" DROP COLUMN "Actors",
DROP COLUMN "Awards",
DROP COLUMN "ComingSoon",
DROP COLUMN "Country",
DROP COLUMN "Director",
DROP COLUMN "Genre",
DROP COLUMN "Language",
DROP COLUMN "Metascore",
DROP COLUMN "Plot",
DROP COLUMN "Poster",
DROP COLUMN "Rated",
DROP COLUMN "Released",
DROP COLUMN "Response",
DROP COLUMN "Runtime",
DROP COLUMN "Type",
DROP COLUMN "Writer",
DROP COLUMN "Year",
DROP COLUMN "imdbID",
DROP COLUMN "imdbRating",
DROP COLUMN "imdbVotes";
