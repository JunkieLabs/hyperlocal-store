

import 'package:storefront_flutter/config/env.dart';
import 'package:storefront_flutter/config/environments/development.dart';
import 'package:storefront_flutter/config/environments/development_n.dart';
import 'package:storefront_flutter/config/environments/final_release.dart';

enum Flavor {
  DEVELOPMENT,
  DEVELOPMENT_N,
  DEVELOPMENT_R,
  FINALE_RELEASE,
}

class F {
  static Env ENV = EnvDevelopment();
  static Flavor _sAppFlavor = Flavor.DEVELOPMENT;

  static Flavor get APP_FLAVOR => _sAppFlavor;
  static set appFlavor(Flavor flavor) {
    _sAppFlavor = flavor;
    if (flavor == Flavor.DEVELOPMENT) {
      ENV = EnvDevelopment();
    } else if (flavor == Flavor.FINALE_RELEASE) {
      ENV = EnvFinalRelase();
    }  else {
      ENV = EnvDevelopmentN();
    }
    print("ENV: $ENV");
  }

  static String get indexRoute {
    return ENV.indexRoute;
  }

  static String get title {
    return ENV.title;
  }

  static String get apiUrl {
    return ENV.apiUrl;
  }
}
