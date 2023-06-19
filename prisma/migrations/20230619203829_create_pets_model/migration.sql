-- CreateEnum
CREATE TYPE "PetAge" AS ENUM ('CUB', 'ADULT', 'SENIOR');

-- CreateEnum
CREATE TYPE "PetShape" AS ENUM ('SMALL', 'MEDIUM', 'BIG');

-- CreateEnum
CREATE TYPE "PetEnergyLevel" AS ENUM ('LOWEST', 'LOW', 'MEDIUM', 'HIGH', 'HIGHEST');

-- CreateEnum
CREATE TYPE "PetIndependenceLevel" AS ENUM ('LOW', 'MEDIUM', 'HIGH');

-- CreateEnum
CREATE TYPE "PetRecommendedEnvironmentSize" AS ENUM ('SMALL', 'MEDIUM', 'WIDE');

-- CreateTable
CREATE TABLE "pets" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT,
    "age" "PetAge" NOT NULL,
    "shape" "PetShape" NOT NULL,
    "energy_level" "PetEnergyLevel" NOT NULL,
    "independence_level" "PetIndependenceLevel" NOT NULL,
    "recommended_environment_size" "PetRecommendedEnvironmentSize" NOT NULL,
    "requirements" TEXT[],

    CONSTRAINT "pets_pkey" PRIMARY KEY ("id")
);
