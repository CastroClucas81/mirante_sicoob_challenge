import 'package:mirante_sicoob_challenge/src/features/list/domain/params/index_pokemon_params.dart';

class IndexPokemonParamsModel extends IndexPokemonParams {
  IndexPokemonParamsModel({
    required super.offset,
    required super.limit,
    super.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offset': offset,
      'limit': limit,
      if (search != null && search!.isNotEmpty) 'search': search,
    };
  }
}
