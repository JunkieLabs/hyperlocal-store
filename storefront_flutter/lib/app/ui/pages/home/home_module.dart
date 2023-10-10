import 'package:flutter_modular/flutter_modular.dart';

import 'home_controller.dart';
import 'home_page.dart';

class HomeModule extends Module {
  // @override
  // final List<Bind> binds = [
  //   Bind.lazySingleton((i) => HomeController()),
  // ];

  // @override
  // final List<ModularRoute> routes = [
  //   ChildRoute(Modular.initialRoute, child: (_, args) => HomePage()),
  // ];

  @override
  void binds(Injector i) {
    // super.binds(i);
    i.add(HomeController.new);
  }

  @override
  void routes(RouteManager r) {
    
    r.child('/', child: (context) => const HomePage());
    //  r.module('/', module: HomeModule());
    // super.routes(r);
  }


}