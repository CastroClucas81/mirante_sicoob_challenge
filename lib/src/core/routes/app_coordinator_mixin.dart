import 'package:flutter/material.dart';
import 'package:mirante_sicoob_challenge/src/core/routes/route_constants.dart';

mixin AppCoordinatorMixin {
  Future<void> goDetails(
    BuildContext context, {
    required String pokemonName,
  }) =>
      Navigator.pushNamed(
        context,
        RouteConstants.details,
        arguments: pokemonName,
      );
}
