import 'package:flutter_modular/flutter_modular.dart';
import 'package:storefront_flutter/app/tools/bloc/config.dart';
import 'package:storefront_flutter/app/ui/labs/labs_controller.dart';
import 'package:storefront_flutter/app/ui/labs/labs_page.dart';

class LabsModule extends Module {

  @override
  void binds(Injector i) {
    // super.binds(i);
    i.add<LabsController>(LabsController.new,  config: blocConfig());
  }

  @override
  void routes(RouteManager r) {
    
    r.child(Modular.initialRoute, child: (context) => const LabsPage());
    //  r.module('/', module: HomeModule());
    // super.routes(r);
  }


}
