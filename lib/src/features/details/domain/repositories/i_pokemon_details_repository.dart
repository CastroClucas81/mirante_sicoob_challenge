import 'package:dartz/dartz.dart';
import 'package:mirante_sicoob_challenge/src/core/failures/failure.dart';
import 'package:mirante_sicoob_challenge/src/features/details/domain/entities/evolution_chain_entity.dart';
import 'package:mirante_sicoob_challenge/src/features/details/domain/entities/pokemon_details_entity.dart';

abstract class IPokemonDetailsRepository {
  Future<Either<Failure, PokemonDetailsEntity>> show(String name);

  Future<Either<Failure, String>> showPokemonEvolutionChainId(
      String pokemonName);

  Future<Either<Failure, EvolutionChainEntity>> showEvolutionChain(
      String evolutionChainId);
}
