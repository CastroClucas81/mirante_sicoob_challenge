import 'package:mirante_sicoob_challenge/src/features/details/domain/entities/evolves_specie_entity.dart';
import 'package:mirante_sicoob_challenge/src/features/details/domain/entities/evolves_to_entity.dart';

class EvolutionChainEntity {
  final EvolvesSpecieEntity species;
  final List<EvolvesToEntity> evolvesTo;

  const EvolutionChainEntity({
    required this.species,
    required this.evolvesTo,
  });
}
