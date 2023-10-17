

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:storefront_flutter/app/ui/pages/products/list/products_controller.dart';
import 'package:storefront_flutter/res/store_icons_icons.dart';

class ProductsPage extends StatefulWidget {
  final String title;
  const ProductsPage({Key? key, this.title = 'Products'}) : super(key: key);

  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {

  late final ProductsController store;

  @override
  void initState() {
    super.initState();
    store = Modular.get<ProductsController>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Container(),
      
    );
  }
}