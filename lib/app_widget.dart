import 'package:flutter/material.dart';
import 'package:mirante_sicoob_challenge/generated/l10n.dart';
import 'package:mirante_sicoob_challenge/src/core/routes/app_routes.dart';
import 'package:mirante_sicoob_challenge/src/core/routes/route_constants.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mirante/Sicoob challenge',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      themeMode: ThemeMode.system,
      initialRoute: RouteConstants.list,
      localizationsDelegates: const [S.delegate],
      supportedLocales: S.delegate.supportedLocales,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
