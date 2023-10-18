// import 'package:hundi_flutter/app/types/cns_type.dart';
import 'package:storefront_flutter/app/types/cns_type.dart';

class MediaUiHelper {
  static String getImageTag(CnsType? cns, int i) {
    if (cns == null) return "";

    if (cns.url != null) return cns.url!;
    if (cns.thUrl != null) return cns.thUrl!;
    return "image ${i}";
  }

  static String? getImage(CnsType? cns) {
    if (cns == null) return "";

    if (cns.url != null) return cns.url!;
    if (cns.thUrl != null) return cns.thUrl!;
    return null;
  }
  // static DecorationImage image(CnsType? cns ){

  //   return cns!=null
  //                 ? DecorationImage(
  //                     image: NetworkImage(
  //                         cns.thUrl ?? cns.url ?? ""),
  //                     fit: BoxFit.cover,
  //                   )
  //                 : const DecorationImage(
  //                     image: AssetImage("assets/img/pic_sample1.jpg"),
  //                     fit: BoxFit.cover,
  //                   );

  // }
}
