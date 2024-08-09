import 'package:dartz/dartz.dart';
import 'package:mirante_sicoob_challenge/src/core/failures/failure.dart';
import 'package:mirante_sicoob_challenge/src/features/list/data/datasources/i_pokemon_list_datasource.dart';
import 'package:mirante_sicoob_challenge/src/features/list/data/models/params/index_pokemon_params_model.dart';
import 'package:mirante_sicoob_challenge/src/features/list/domain/entities/paginate_pokemon_entity.dart';
import 'package:mirante_sicoob_challenge/src/features/list/domain/repositories/i_pokemon_list_repository.dart';

class PokemonListRepository implements IPokemonListRepository {
  final IPokemonListDatasource _datasource;

  PokemonListRepository({required IPokemonListDatasource datasource})
      : _datasource = datasource;

  @override
  Future<Either<Failure, PaginatePokemonEntity>> show(
    IndexPokemonParamsModel params,
  ) async {
    try {
      final result = await _datasource.index(params);

      return Right(result);
    } on Failure catch (e) {
      return Left(e);
    }
  }
}
