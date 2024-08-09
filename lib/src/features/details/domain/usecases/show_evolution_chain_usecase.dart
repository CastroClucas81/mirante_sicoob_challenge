import 'package:dartz/dartz.dart';
import 'package:mirante_sicoob_challenge/src/core/failures/failure.dart';
import 'package:mirante_sicoob_challenge/src/features/details/domain/entities/evolution_chain_entity.dart';
import 'package:mirante_sicoob_challenge/src/features/details/domain/repositories/i_pokemon_details_repository.dart';

class ShowEvolutionChainUsecase {
  final IPokemonDetailsRepository _repository;

  ShowEvolutionChainUsecase({required IPokemonDetailsRepository repository})
      : _repository = repository;

  Future<Either<Failure, EvolutionChainEntity>> call(String evolutionChainId) =>
      _repository.showEvolutionChain(evolutionChainId);
}
