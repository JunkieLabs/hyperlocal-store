import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:storefront_flutter/app/tools/media/constants.dart';
import 'package:storefront_flutter/app/types/cns_type.dart';
import 'package:storefront_flutter/app/ui/pages/products/detail/product_detail_controller.dart';
import 'package:storefront_flutter/app/ui/shared/modal/media_modal.dart';
import 'package:storefront_flutter/app/ui/widgets/media/viewer/media_viewer.dart';
import 'package:storefront_flutter/app/ui/widgets/media/viewer/media_viewer_args.dart';
import 'package:storefront_flutter/res/store_icons_icons.dart';

class ProductDetailPage extends StatefulWidget {
  final String title;

  final String id;
  const ProductDetailPage(this.id, {Key? key, this.title = 'Product Detail'})
      : super(key: key);

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  late final ProductDetailController store;

  @override
  void initState() {
    super.initState();
    store = Modular.get<ProductDetailController>();
    //  WidgetsBinding.instance.addPostFrameCallback((_) {
    //                       Navigator.of(context).pop();
    //                     });
    //  Modular.to.pop();
    // Future.delayed(const Duration(milliseconds: 200), ()=> Modular.to.pop());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('sds'),
      ),
      body: Container(
        child: MediaViewer(
          // 'assets/img/about/pic_hundi_paper.webp'
          requestArgs: MediaViewerArgsRequest(
              cnsList: List.of([
            CnsType(
                assetPath: "assets/img/dummy/product_1.jpg",
                type: MediaConstants.TYPES.image),
            CnsType(
                assetPath: "assets/img/dummy/product_2.jpg",
                type: MediaConstants.TYPES.image),
            CnsType(
                assetPath: "assets/img/dummy/product_3.jpg",
                type: MediaConstants.TYPES.image),
            CnsType(
                assetPath: "assets/img/dummy/product_4.jpg",
                type: MediaConstants.TYPES.image)
          ])),
        ),
      ),
    );
  }
}
