import 'package:mirante_sicoob_challenge/src/features/details/data/models/entities/evolves_specie_model.dart';
import 'package:mirante_sicoob_challenge/src/features/details/domain/entities/evolves_to_entity.dart';

class EvolvesToModel extends EvolvesToEntity {
  EvolvesToModel({
    required super.species,
    required super.evolvesTo,
    super.minLevel,
    super.trigger,
  });

  factory EvolvesToModel.fromMap(Map<String, dynamic> map) {
    return EvolvesToModel(
      minLevel: map['evolution_details'][0]?['min_level'] as int?,
      trigger: map['evolution_details'][0]?['trigger']['name'],
      species: EvolvesSpecieModel.fromMap(
        map['species'] as Map<String, dynamic>,
      ),
      evolvesTo: (map['evolves_to'] as List)
          .map((e) => EvolvesToModel.fromMap(e))
          .toList(),
    );
  }
}
