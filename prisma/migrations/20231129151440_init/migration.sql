-- CreateEnum
CREATE TYPE "Availability" AS ENUM ('ONLINE', 'IN_STORE');

-- CreateTable
CREATE TABLE "Plane" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "sale" BOOLEAN NOT NULL DEFAULT false,
    "availability" "Availability" NOT NULL DEFAULT 'IN_STORE',

    CONSTRAINT "Plane_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Plane_name_key" ON "Plane"("name");
