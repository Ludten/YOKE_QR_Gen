/*
  Warnings:

  - Added the required column `uid` to the `QRcode` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "QRcode" ADD COLUMN     "uid" TEXT NOT NULL;
