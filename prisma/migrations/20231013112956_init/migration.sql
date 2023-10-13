-- CreateTable
CREATE TABLE "Movie" (
    "ComingSoon" TEXT,
    "Title" TEXT NOT NULL,
    "Year" TEXT NOT NULL,
    "Rated" TEXT NOT NULL,
    "Released" TEXT NOT NULL,
    "Runtime" TEXT NOT NULL,
    "Genre" TEXT NOT NULL,
    "Director" TEXT NOT NULL,
    "Writer" TEXT NOT NULL,
    "Actors" TEXT NOT NULL,
    "Plot" TEXT NOT NULL,
    "Language" TEXT NOT NULL,
    "Country" TEXT NOT NULL,
    "Awards" TEXT NOT NULL,
    "Poster" TEXT NOT NULL,
    "Metascore" TEXT NOT NULL,
    "imdbRating" TEXT NOT NULL,
    "imdbVotes" TEXT NOT NULL,
    "imdbID" TEXT NOT NULL,
    "Type" TEXT NOT NULL,
    "Response" TEXT NOT NULL,
    "Images" TEXT NOT NULL,
    "id" SERIAL NOT NULL,
    "qRCodeId" INTEGER,

    CONSTRAINT "Movie_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QRcode" (
    "id" SERIAL NOT NULL,
    "link" TEXT NOT NULL,
    "image" TEXT NOT NULL,

    CONSTRAINT "QRcode_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Movie" ADD CONSTRAINT "Movie_qRCodeId_fkey" FOREIGN KEY ("qRCodeId") REFERENCES "QRcode"("id") ON DELETE SET NULL ON UPDATE CASCADE;
