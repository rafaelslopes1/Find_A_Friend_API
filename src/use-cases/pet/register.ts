import { PetsRepository } from '@/repositories/pets-repository';
import { Pet, PetAge, PetEnergyLevel, PetIndependenceLevel, PetRecommendedEnvironmentSize, PetShape } from '@prisma/client';

interface RegisterPetUseCaseRequest {
  name: string;
  description: string;
  age: PetAge;
  shape: PetShape
  energyLevel: PetEnergyLevel
  independenceLevel: PetIndependenceLevel
  recommendedEnvironmentSize: PetRecommendedEnvironmentSize
  requirements: string[]
}

interface RegisterPetUseCaseResponse {
  pet: Pet
}

export class RegisterPetUseCase {
  constructor(
    private readonly petsRepository: PetsRepository
  ) { }

  async execute({
    name,
    description,
    age,
    shape,
    energyLevel,
    independenceLevel,
    recommendedEnvironmentSize,
    requirements
  }: RegisterPetUseCaseRequest): Promise<RegisterPetUseCaseResponse> {
    const pet = await this.petsRepository.create({
      name,
      description,
      age,
      shape,
      energy_level: energyLevel,
      independence_level: independenceLevel,
      recommended_environment_size: recommendedEnvironmentSize,
      requirements
    });

    return {
      pet
    };
  }
}