import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  // @override
  // final List<Bind> binds() = [];

  // @override
  // final List<ModularRoute> routes = [
  //   ModuleRoute('/', module: HomeModule()),
  // ];

  @override
  void binds(Injector i) {
    // TODO: implement binds
    // super.binds(i);
  }

  @override
  void routes(RouteManager r) {
    
    // r.child('/', child: (context) => HomeModule());
     r.module('/', module: HomeModule());
    // super.routes(r);
  }

}