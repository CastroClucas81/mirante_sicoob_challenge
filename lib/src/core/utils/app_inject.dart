import 'package:get_it/get_it.dart';
import 'package:mirante_sicoob_challenge/src/core/services/data/services/api_service.dart';
import 'package:mirante_sicoob_challenge/src/core/services/domain/services/i_api_service.dart';
import 'package:mirante_sicoob_challenge/src/features/details/data/datasources/i_pokemon_details_datasource.dart';
import 'package:mirante_sicoob_challenge/src/features/details/data/datasources/remote/pokemon_details_remote_datasource.dart';
import 'package:mirante_sicoob_challenge/src/features/details/data/repositories/pokemon_details_repository.dart';
import 'package:mirante_sicoob_challenge/src/features/details/domain/repositories/i_pokemon_details_repository.dart';
import 'package:mirante_sicoob_challenge/src/features/details/domain/usecases/show_evolution_chain_usecase.dart';
import 'package:mirante_sicoob_challenge/src/features/details/domain/usecases/show_pokemon_details_usecase.dart';
import 'package:mirante_sicoob_challenge/src/features/details/domain/usecases/show_pokemon_evolution_chain_id_usecase.dart';
import 'package:mirante_sicoob_challenge/src/features/details/presentation/stores/pokemon_details_store.dart';
import 'package:mirante_sicoob_challenge/src/features/list/data/datasources/i_pokemon_list_datasource.dart';
import 'package:mirante_sicoob_challenge/src/features/list/data/datasources/remote/pokemon_list_remote_datasource.dart';
import 'package:mirante_sicoob_challenge/src/features/list/data/repositories/pokemon_list_repository.dart';
import 'package:mirante_sicoob_challenge/src/features/list/domain/repositories/i_pokemon_list_repository.dart';
import 'package:mirante_sicoob_challenge/src/features/list/domain/usecases/index_pokemon_usecase.dart';

class AppInject {
  static final i = GetIt.I;

  AppInject._() {
    /// services
    i.registerLazySingleton<IApiService>(() => ApiService());

    /// datasources
    i.registerFactory<IPokemonListDatasource>(
      () => PokemonListRemoteDatasouce(
        apiService: i(),
      ),
    );

    i.registerFactory<IPokemonDetailsDatasource>(
      () => PokemonDetailsRemoteDatasouce(
        apiService: i(),
      ),
    );

    /// repositories
    i.registerFactory<IPokemonListRepository>(
      () => PokemonListRepository(
        datasource: i(),
      ),
    );

    i.registerFactory<IPokemonDetailsRepository>(
      () => PokemonDetailsRepository(
        datasource: i(),
      ),
    );

    /// usecases
    i.registerFactory(
      () => IndexPokemonUsecase(
        repository: i(),
      ),
    );

    i.registerFactory(
      () => ShowEvolutionChainUsecase(
        repository: i(),
      ),
    );

    i.registerFactory(
      () => ShowPokemonDetailsUsecase(
        repository: i(),
      ),
    );

    i.registerFactory(
      () => ShowPokemonEvolutionChainIdUsecase(
        repository: i(),
      ),
    );

    /// stores
    i.registerFactory(
      () => PokemonDetailsStore(
        detailsUsecase: i(),
        evolutionChainUsecase: i(),
        pokemonEvolutionChainIdUsecase: i(),
      ),
    );
  }

  AppInject.start() : this._();
}
