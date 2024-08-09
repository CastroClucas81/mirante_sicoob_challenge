import 'package:mirante_sicoob_challenge/src/features/list/domain/entities/pokemon_entity.dart';

class PaginatePokemonEntity {
  final int count;
  final String? next;
  final String? previous;
  final List<PokemonEntity> results;

  const PaginatePokemonEntity({
    required this.count,
    this.next,
    this.previous,
    required this.results,
  });
}
