import 'package:dartz/dartz.dart';
import 'package:mirante_sicoob_challenge/src/core/failures/failure.dart';
import 'package:mirante_sicoob_challenge/src/features/details/data/datasources/i_pokemon_details_datasource.dart';
import 'package:mirante_sicoob_challenge/src/features/details/domain/entities/evolution_chain_entity.dart';
import 'package:mirante_sicoob_challenge/src/features/details/domain/entities/pokemon_details_entity.dart';
import 'package:mirante_sicoob_challenge/src/features/details/domain/repositories/i_pokemon_details_repository.dart';

class PokemonDetailsRepository implements IPokemonDetailsRepository {
  final IPokemonDetailsDatasource _datasource;

  PokemonDetailsRepository({required IPokemonDetailsDatasource datasource})
      : _datasource = datasource;

  @override
  Future<Either<Failure, PokemonDetailsEntity>> show(String name) async {
    try {
      final result = await _datasource.show(name);

      return Right(result);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, EvolutionChainEntity>> showEvolutionChain(
      String evolutionChainId) async {
    try {
      final result = await _datasource.showEvolutionChain(evolutionChainId);

      return Right(result);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, String>> showPokemonEvolutionChainId(
      String pokemonName) async {
    try {
      final result = await _datasource.showPokemonEvolutionChainId(pokemonName);

      return Right(result);
    } on Failure catch (e) {
      return Left(e);
    }
  }
}
