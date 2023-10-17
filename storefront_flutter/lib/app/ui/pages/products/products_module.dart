
import 'package:flutter_modular/flutter_modular.dart';
import 'package:logger/logger.dart';
import 'package:storefront_flutter/app/tools/bloc/config.dart';
import 'package:storefront_flutter/app/ui/pages/products/detail/product_detail_controller.dart';
import 'package:storefront_flutter/app/ui/pages/products/detail/product_detail_page.dart';
import 'package:storefront_flutter/app/ui/pages/products/list/products_controller.dart';
import 'package:storefront_flutter/app/ui/pages/products/list/products_page.dart';

class ProductsModule extends Module {

  var mLogger = Logger();

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
    i.add<ProductsController>(ProductsController.new,  config: blocConfig());
    i.add<ProductDetailController>(ProductDetailController.new,  config: blocConfig());
  }

  @override
  void routes(RouteManager r) {
    
    r.child(Modular.initialRoute, child:  (context) => const ProductsPage());
    r.child('/:id', child: (context) => ProductDetailPage(r.args.params['id']??""));
    //  r.module('/', module: ProductsModule());
    // super.routes(r);
  }


}