import 'package:mirante_sicoob_challenge/src/features/list/data/models/params/index_pokemon_params_model.dart';
import 'package:mirante_sicoob_challenge/src/features/list/domain/entities/paginate_pokemon_entity.dart';

abstract class IPokemonListDatasource {
  Future<PaginatePokemonEntity> index(IndexPokemonParamsModel params);
}
