import 'package:dartz/dartz.dart';
import 'package:mirante_sicoob_challenge/src/core/failures/failure.dart';
import 'package:mirante_sicoob_challenge/src/features/details/domain/entities/pokemon_details_entity.dart';
import 'package:mirante_sicoob_challenge/src/features/details/domain/repositories/i_pokemon_details_repository.dart';

class ShowPokemonDetailsUsecase {
  final IPokemonDetailsRepository _repository;

  ShowPokemonDetailsUsecase({required IPokemonDetailsRepository repository})
      : _repository = repository;

  Future<Either<Failure, PokemonDetailsEntity>> call(String name) =>
      _repository.show(name);
}
