import 'package:mirante_sicoob_challenge/src/features/details/domain/entities/pokemon_type_entity.dart';

class PokemonTypeModel extends PokemonTypeEntity {
  PokemonTypeModel({
    required super.name,
    required super.url,
  });

  factory PokemonTypeModel.fromMap(Map<String, dynamic> map) {
    return PokemonTypeModel(
      name: map['type']['name'],
      url: map['type']['url'],
    );
  }
}
