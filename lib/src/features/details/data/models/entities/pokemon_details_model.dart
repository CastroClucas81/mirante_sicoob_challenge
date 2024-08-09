import 'package:mirante_sicoob_challenge/src/features/details/data/models/entities/pokemon_stat_model.dart';
import 'package:mirante_sicoob_challenge/src/features/details/data/models/entities/pokemon_type_model.dart';
import 'package:mirante_sicoob_challenge/src/features/details/domain/entities/pokemon_details_entity.dart';

class PokemonDetailsModel extends PokemonDetailsEntity {
  PokemonDetailsModel({
    required super.id,
    required super.weight,
    required super.height,
    required super.name,
    required super.locationAreaEncounters,
    required super.types,
    required super.stats,
    required super.gif,
    required super.abilityName,
  });

  factory PokemonDetailsModel.fromMap(Map<String, dynamic> map) {
    return PokemonDetailsModel(
      id: map['id'] as int,
      weight: map['weight'] as int,
      height: map['height'] as int,
      name: map['name'] as String,
      locationAreaEncounters: map['location_area_encounters'] as String,
      types: (map['types'] as List)
          .map(
            (x) => PokemonTypeModel.fromMap(x as Map<String, dynamic>),
          )
          .toList(),
      stats: (map['stats'] as List)
          .map(
            (x) => PokemonStatModel.fromMap(x as Map<String, dynamic>),
          )
          .toList(),
      gif: map['sprites']['other']['showdown']['front_default'],
      abilityName: map['abilities'][0]['ability']['name'] as String,
    );
  }
}
