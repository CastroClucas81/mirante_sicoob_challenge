import 'package:mirante_sicoob_challenge/src/features/list/data/models/entities/pokemon_model.dart';
import 'package:mirante_sicoob_challenge/src/features/list/domain/entities/paginate_pokemon_entity.dart';

class PaginatePokemonModel extends PaginatePokemonEntity {
  PaginatePokemonModel({
    required super.count,
    required super.results,
    super.next,
    super.previous,
  });

  factory PaginatePokemonModel.fromMap(Map<String, dynamic> map) {
    return PaginatePokemonModel(
      count: map['count'] as int,
      next: map['next'],
      previous: map['previous'],
      results: (map['results'] as List)
          .map(
            (x) => PokemonModel.fromMap(x as Map<String, dynamic>),
          )
          .toList(),
    );
  }
}
