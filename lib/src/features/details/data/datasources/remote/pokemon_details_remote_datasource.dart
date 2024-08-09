import 'package:mirante_sicoob_challenge/src/core/failures/failure.dart';
import 'package:mirante_sicoob_challenge/src/core/services/domain/services/i_api_service.dart';
import 'package:mirante_sicoob_challenge/src/core/utils/utils.dart';
import 'package:mirante_sicoob_challenge/src/features/details/data/datasources/i_pokemon_details_datasource.dart';
import 'package:mirante_sicoob_challenge/src/features/details/data/models/entities/evolution_chain_model.dart';
import 'package:mirante_sicoob_challenge/src/features/details/data/models/entities/pokemon_details_model.dart';
import 'package:mirante_sicoob_challenge/src/features/details/domain/entities/evolution_chain_entity.dart';
import 'package:mirante_sicoob_challenge/src/features/details/domain/entities/pokemon_details_entity.dart';

class PokemonDetailsRemoteDatasouce implements IPokemonDetailsDatasource {
  final IApiService _apiService;

  PokemonDetailsRemoteDatasouce({
    required IApiService apiService,
  }) : _apiService = apiService;

  @override
  Future<PokemonDetailsEntity> show(String name) async {
    try {
      final result = await _apiService.get('/pokemon/$name');

      return PokemonDetailsModel.fromMap(result);
    } on ServerFailure {
      rethrow;
    } catch (e) {
      throw UnexpectedFailure();
    }
  }

  @override
  Future<String> showPokemonEvolutionChainId(String pokemonName) async {
    try {
      final result = await _apiService.get('/pokemon/$pokemonName');

      final url = result['evolution_chain']['url'] as String;

      return Utils.extractIdFromUrl(url);
    } on ServerFailure {
      rethrow;
    } catch (e) {
      throw UnexpectedFailure();
    }
  }

  @override
  Future<EvolutionChainEntity> showEvolutionChain(
      String evolutionChainId) async {
    try {
      final result =
          await _apiService.get('/evolution-chain/$evolutionChainId');

      return EvolutionChainModel.fromMap(result);
    } on ServerFailure {
      rethrow;
    } catch (e) {
      throw UnexpectedFailure();
    }
  }
}
