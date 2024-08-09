import 'package:flutter/material.dart';
import 'package:mirante_sicoob_challenge/app_widget.dart';
import 'package:mirante_sicoob_challenge/src/core/utils/app_inject.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  AppInject.start();

  runApp(const AppWidget());
}
