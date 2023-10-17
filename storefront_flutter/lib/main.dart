import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:storefront_flutter/flavors.dart';
import 'package:storefront_flutter/fix/platforms/io.dart'
    if (dart.library.html) 'package:storefront_flutter/fix/platforms/web.dart'
    as PlatformFix;

import 'app/app_module.dart';
import 'app/app_widget.dart';

Future<void> main() async {
  F.appFlavor = Flavor.DEVELOPMENT_N;

  WidgetsFlutterBinding.ensureInitialized();

  Modular.setInitialRoute(F.indexRoute);
  // await Modular.isModuleReady<AppModule>();
  PlatformFix.urls();
  runApp(ModularApp(module: AppModule(), child: AppWidget()));
}
