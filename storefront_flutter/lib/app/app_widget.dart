import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Slidy',
      theme: ThemeData(primarySwatch: Colors.blue),
      routerConfig: Modular.routerConfig
      // routerDelegate: Modular.routerDelegate,
      // routeInformationParser: Modular.routeInformationParser,
    );
  }
}