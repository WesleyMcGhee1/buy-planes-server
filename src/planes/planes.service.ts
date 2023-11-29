import { Injectable } from '@nestjs/common';
import { DatabaseService } from 'src/database/database.service';
import { Prisma } from '@prisma/client';

@Injectable()
export class PlanesService {
  constructor(private readonly databaseService: DatabaseService) {}

  async create(createPlaneDto: Prisma.PlaneCreateInput) {
    return this.databaseService.plane.create({ data: createPlaneDto });
  }

  async findAll() {
    return this.databaseService.plane.findMany({
      include: {
        tags: true,
      },
    });
  }

  async findOne(id: number) {
    return this.databaseService.plane.findUnique({
      where: {
        id,
      },
      include: {
        tags: true,
        description: true,
        reviews: true,
      },
    });
  }

  async update(id: number, updatePlaneDto: Prisma.PlaneUpdateInput) {
    return this.databaseService.plane.update({
      where: {
        id,
      },
      data: updatePlaneDto,
    });
  }

  async remove(id: number) {
    return this.databaseService.plane.delete({
      where: {
        id,
      },
    });
  }
}
