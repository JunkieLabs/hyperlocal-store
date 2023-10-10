import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:storefront_flutter/flavors.dart';

import 'app/app_module.dart';
import 'app/app_widget.dart';

Future<void> main() async {
  F.appFlavor = Flavor.DEVELOPMENT_N;
  
   WidgetsFlutterBinding.ensureInitialized();

    Modular.setInitialRoute(F.indexRoute);
  // await Modular.isModuleReady<AppModule>();

  runApp(ModularApp(module: AppModule(), child: AppWidget()));
}
