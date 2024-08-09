import 'package:mirante_sicoob_challenge/src/features/details/domain/entities/evolution_chain_entity.dart';
import 'package:mirante_sicoob_challenge/src/features/details/domain/entities/pokemon_details_entity.dart';

sealed class DetailsState {}

class DetailsLoading extends DetailsState {}

class DetailsError extends DetailsState {
  final String message;

  DetailsError({required this.message});
}

class DetailsSuccess extends DetailsState {
  final PokemonDetailsEntity pokemon;
  final EvolutionChainEntity evolutionChain;

  DetailsSuccess({
    required this.pokemon,
    required this.evolutionChain,
  });
}
