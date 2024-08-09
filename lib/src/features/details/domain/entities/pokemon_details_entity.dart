import 'package:mirante_sicoob_challenge/src/features/details/domain/entities/pokemon_stat_entity.dart';
import 'package:mirante_sicoob_challenge/src/features/details/domain/entities/pokemon_type_entity.dart';

class PokemonDetailsEntity {
  final int id;
  final int weight;
  final int height;
  final String name;
  final String locationAreaEncounters;
  final List<PokemonTypeEntity> types;
  final List<PokemonStatEntity> stats;
  final String gif;
  final String abilityName;

  const PokemonDetailsEntity({
    required this.id,
    required this.weight,
    required this.height,
    required this.name,
    required this.locationAreaEncounters,
    required this.types,
    required this.stats,
    required this.gif,
    required this.abilityName,
  });
}
