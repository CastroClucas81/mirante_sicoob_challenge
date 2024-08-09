import 'package:flutter/material.dart';
import 'package:mirante_sicoob_challenge/src/core/routes/route_constants.dart';
import 'package:mirante_sicoob_challenge/src/features/details/presentation/pokemon_details_page.dart';
import 'package:mirante_sicoob_challenge/src/features/list/presentation/pokemon_list_page.dart';

class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    late final Widget page;

    switch (settings.name) {
      case RouteConstants.list:
        page = const PokemonListPage();
      case RouteConstants.details:
      default:
        page = PokemonDetailsPage(pokemonName: settings.arguments as String);
    }

    return MaterialPageRoute(builder: (_) => page);
  }
}
