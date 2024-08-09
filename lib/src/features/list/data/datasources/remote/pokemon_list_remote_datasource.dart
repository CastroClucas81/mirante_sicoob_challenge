import 'package:mirante_sicoob_challenge/src/core/failures/failure.dart';
import 'package:mirante_sicoob_challenge/src/core/services/domain/services/i_api_service.dart';
import 'package:mirante_sicoob_challenge/src/features/list/data/datasources/i_pokemon_list_datasource.dart';
import 'package:mirante_sicoob_challenge/src/features/list/data/models/entities/paginate_pokemon_model.dart';
import 'package:mirante_sicoob_challenge/src/features/list/data/models/params/index_pokemon_params_model.dart';
import 'package:mirante_sicoob_challenge/src/features/list/domain/entities/paginate_pokemon_entity.dart';

class PokemonListRemoteDatasouce implements IPokemonListDatasource {
  final IApiService _apiService;

  PokemonListRemoteDatasouce({
    required IApiService apiService,
  }) : _apiService = apiService;

  @override
  Future<PaginatePokemonEntity> index(IndexPokemonParamsModel params) async {
    try {
      final result = await _apiService.get(
        '/pokemon',
        queryParams: params.toMap(),
      );

      return PaginatePokemonModel.fromMap(result);
    } on ServerFailure {
      rethrow;
    } catch (e) {
      throw UnexpectedFailure();
    }
  }
}
