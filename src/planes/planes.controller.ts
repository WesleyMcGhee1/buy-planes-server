import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
} from '@nestjs/common';
import { PlanesService } from './planes.service';
import { Prisma } from '@prisma/client';

@Controller('planes')
export class PlanesController {
  constructor(private readonly planesService: PlanesService) {}

  @Post()
  create(@Body() createPlaneDto: Prisma.PlaneCreateInput) {
    return this.planesService.create(createPlaneDto);
  }

  @Get()
  findAll() {
    return this.planesService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.planesService.findOne(+id);
  }

  @Patch(':id')
  update(
    @Param('id') id: string,
    @Body() updatePlaneDto: Prisma.PlaneUpdateInput,
  ) {
    return this.planesService.update(+id, updatePlaneDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.planesService.remove(+id);
  }
}
