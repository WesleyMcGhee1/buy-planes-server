-- CreateTable
CREATE TABLE "Description" (
    "id" SERIAL NOT NULL,
    "content" TEXT NOT NULL,
    "planeId" INTEGER NOT NULL,

    CONSTRAINT "Description_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Review" (
    "id" SERIAL NOT NULL,
    "title" TEXT NOT NULL,
    "content" TEXT NOT NULL,
    "rating" INTEGER NOT NULL,
    "planeId" INTEGER NOT NULL,

    CONSTRAINT "Review_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Tag" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "Tag_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_PlaneToTag" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "Description_planeId_key" ON "Description"("planeId");

-- CreateIndex
CREATE UNIQUE INDEX "_PlaneToTag_AB_unique" ON "_PlaneToTag"("A", "B");

-- CreateIndex
CREATE INDEX "_PlaneToTag_B_index" ON "_PlaneToTag"("B");

-- AddForeignKey
ALTER TABLE "Description" ADD CONSTRAINT "Description_planeId_fkey" FOREIGN KEY ("planeId") REFERENCES "Plane"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Review" ADD CONSTRAINT "Review_planeId_fkey" FOREIGN KEY ("planeId") REFERENCES "Plane"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_PlaneToTag" ADD CONSTRAINT "_PlaneToTag_A_fkey" FOREIGN KEY ("A") REFERENCES "Plane"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_PlaneToTag" ADD CONSTRAINT "_PlaneToTag_B_fkey" FOREIGN KEY ("B") REFERENCES "Tag"("id") ON DELETE CASCADE ON UPDATE CASCADE;
