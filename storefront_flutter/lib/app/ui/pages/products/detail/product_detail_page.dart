

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:storefront_flutter/app/ui/pages/products/detail/product_detail_controller.dart';
import 'package:storefront_flutter/res/store_icons_icons.dart';

class ProductDetailPage extends StatefulWidget {
  final String title;
  
  final String id;
  const ProductDetailPage(this.id,{Key? key, this.title = 'Product Detail'}) : super(key: key);

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {

  late final ProductDetailController store;

  @override
  void initState() {
    super.initState();
    store = Modular.get<ProductDetailController>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('sds'),
      ),
      body: Container(),
      
    );
  }
}