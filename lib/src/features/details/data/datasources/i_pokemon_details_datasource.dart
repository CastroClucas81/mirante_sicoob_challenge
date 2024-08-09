import 'package:mirante_sicoob_challenge/src/features/details/domain/entities/evolution_chain_entity.dart';
import 'package:mirante_sicoob_challenge/src/features/details/domain/entities/pokemon_details_entity.dart';

abstract class IPokemonDetailsDatasource {
  Future<PokemonDetailsEntity> show(String name);
  
  Future<String> showPokemonEvolutionChainId(String pokemonName);

  Future<EvolutionChainEntity> showEvolutionChain(String evolutionChainId);
}
