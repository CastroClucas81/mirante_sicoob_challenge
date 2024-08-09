import 'package:flutter/material.dart';
import 'package:mirante_sicoob_challenge/src/core/utils/app_inject.dart';
import 'package:mirante_sicoob_challenge/src/features/details/presentation/stores/pokemon_details_store.dart';

class PokemonDetailsPage extends StatefulWidget {
  final String pokemonName;

  const PokemonDetailsPage({required this.pokemonName, super.key});

  @override
  State<PokemonDetailsPage> createState() => _PokemonDetailsPageState();
}

class _PokemonDetailsPageState extends State<PokemonDetailsPage> {
  final store = AppInject.i.get<PokemonDetailsStore>();

  @override
  void initState() {
    store.start(pokemonName: widget.pokemonName);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}
