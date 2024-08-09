import 'package:mirante_sicoob_challenge/src/features/details/domain/entities/pokemon_stat_entity.dart';

class PokemonStatModel extends PokemonStatEntity {
  PokemonStatModel({
    required super.effort,
    required super.baseStat,
    required super.name,
    required super.url,
  });

  factory PokemonStatModel.fromMap(Map<String, dynamic> map) {
    return PokemonStatModel(
      baseStat: map['base_stat'] as int,
      effort: map['effort'] as int,
      name: map['stat']['name'],
      url: map['stat']['url'],
    );
  }
}
