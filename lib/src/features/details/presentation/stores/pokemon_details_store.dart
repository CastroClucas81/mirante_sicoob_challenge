import 'package:mirante_sicoob_challenge/generated/l10n.dart';
import 'package:mirante_sicoob_challenge/src/features/details/domain/usecases/show_evolution_chain_usecase.dart';
import 'package:mirante_sicoob_challenge/src/features/details/domain/usecases/show_pokemon_details_usecase.dart';
import 'package:mirante_sicoob_challenge/src/features/details/domain/usecases/show_pokemon_evolution_chain_id_usecase.dart';
import 'package:mirante_sicoob_challenge/src/features/details/presentation/states/pokemon_details_state.dart';
import 'package:mobx/mobx.dart';

part 'pokemon_details_store.g.dart';

class PokemonDetailsStore = PokemonDetailsStoreBase with _$PokemonDetailsStore;

abstract class PokemonDetailsStoreBase with Store {
  final ShowPokemonDetailsUsecase _detailsUsecase;
  final ShowEvolutionChainUsecase _evolutionChainUsecase;
  final ShowPokemonEvolutionChainIdUsecase _pokemonEvolutionChainIdUsecase;

  PokemonDetailsStoreBase({
    required ShowPokemonDetailsUsecase detailsUsecase,
    required ShowEvolutionChainUsecase evolutionChainUsecase,
    required ShowPokemonEvolutionChainIdUsecase pokemonEvolutionChainIdUsecase,
  })  : _detailsUsecase = detailsUsecase,
        _evolutionChainUsecase = evolutionChainUsecase,
        _pokemonEvolutionChainIdUsecase = pokemonEvolutionChainIdUsecase;

  @observable
  DetailsState state = DetailsLoading();

  @action
  Future<void> start({required String pokemonName}) async {
    final isError =
        (() => state = DetailsError(message: S().anUnexpectedErrorOcurrend));

    (await _detailsUsecase(pokemonName)).fold(
      (failure) => isError(),
      (pokemon) async {
        final getPokemonEvolutionChainId =
            await _pokemonEvolutionChainIdUsecase(pokemonName);

        getPokemonEvolutionChainId.fold(
          (failure) => isError(),
          (pokemonEvolutionChainId) async {
            final getEvolutionChain =
                await _evolutionChainUsecase(pokemonEvolutionChainId);

            getEvolutionChain.fold(
              (failure) => isError(),
              (evolutionChain) {
                state = DetailsSuccess(
                  pokemon: pokemon,
                  evolutionChain: evolutionChain,
                );
              },
            );
          },
        );
      },
    );
  }
}
