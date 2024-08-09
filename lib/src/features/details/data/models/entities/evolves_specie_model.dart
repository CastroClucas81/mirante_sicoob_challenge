import 'package:mirante_sicoob_challenge/src/features/details/domain/entities/evolves_specie_entity.dart';

class EvolvesSpecieModel extends EvolvesSpecieEntity {
  EvolvesSpecieModel({
    required super.name,
    required super.url,
  });

  factory EvolvesSpecieModel.fromMap(Map<String, dynamic> map) {
    return EvolvesSpecieModel(
      name: map['name'],
      url: map['url'],
    );
  }
}
