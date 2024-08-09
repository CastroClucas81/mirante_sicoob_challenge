import 'package:mirante_sicoob_challenge/src/features/details/domain/entities/evolves_specie_entity.dart';

class EvolvesToEntity {
  final int? minLevel;
  final String? trigger;
  final EvolvesSpecieEntity species;
  final List<EvolvesToEntity> evolvesTo;

  const EvolvesToEntity({
    this.minLevel,
    this.trigger,
    required this.species,
    required this.evolvesTo,
  });
}
