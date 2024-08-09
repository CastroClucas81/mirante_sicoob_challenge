import 'package:mirante_sicoob_challenge/src/features/details/data/models/entities/evolves_specie_model.dart';
import 'package:mirante_sicoob_challenge/src/features/details/data/models/entities/evolves_to_model.dart';
import 'package:mirante_sicoob_challenge/src/features/details/domain/entities/evolution_chain_entity.dart';

class EvolutionChainModel extends EvolutionChainEntity {
  EvolutionChainModel({
    required super.species,
    required super.evolvesTo,
  });

  factory EvolutionChainModel.fromMap(Map<String, dynamic> map) {
    return EvolutionChainModel(
      species: EvolvesSpecieModel.fromMap(
          map['chain']['species'] as Map<String, dynamic>),
      evolvesTo: (map['chain']['evolves_to'] as List)
          .map((e) => EvolvesToModel.fromMap(e))
          .toList(),
    );
  }
}
