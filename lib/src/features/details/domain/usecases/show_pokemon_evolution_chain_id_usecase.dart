import 'package:dartz/dartz.dart';
import 'package:mirante_sicoob_challenge/src/core/failures/failure.dart';
import 'package:mirante_sicoob_challenge/src/features/details/domain/repositories/i_pokemon_details_repository.dart';

class ShowPokemonEvolutionChainIdUsecase {
  final IPokemonDetailsRepository _repository;

  ShowPokemonEvolutionChainIdUsecase(
      {required IPokemonDetailsRepository repository})
      : _repository = repository;

  Future<Either<Failure, String>> call(String pokemonName) =>
      _repository.showPokemonEvolutionChainId(pokemonName);
}
