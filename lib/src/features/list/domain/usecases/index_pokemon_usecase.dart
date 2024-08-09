import 'package:dartz/dartz.dart';
import 'package:mirante_sicoob_challenge/src/core/failures/failure.dart';
import 'package:mirante_sicoob_challenge/src/features/list/data/models/params/index_pokemon_params_model.dart';
import 'package:mirante_sicoob_challenge/src/features/list/domain/entities/paginate_pokemon_entity.dart';
import 'package:mirante_sicoob_challenge/src/features/list/domain/repositories/i_pokemon_list_repository.dart';

class IndexPokemonUsecase {
  final IPokemonListRepository _repository;

  IndexPokemonUsecase({required IPokemonListRepository repository})
      : _repository = repository;

  Future<Either<Failure, PaginatePokemonEntity>> call(
    IndexPokemonParamsModel params,
  ) =>
      _repository.show(params);
}
