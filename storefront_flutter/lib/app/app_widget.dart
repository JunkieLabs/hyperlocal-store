import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:storefront_flutter/flavors.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    print("initial :::: ${F.indexRoute}");
    return MaterialApp.router(
      title: 'In Local APp',
      theme: ThemeData(primarySwatch: Colors.blue),
      routerConfig: Modular.routerConfig
      // routerDelegate: Modular.routerDelegate,
      // routeInformationParser: Modular.routeInformationParser,
    );
  }
}