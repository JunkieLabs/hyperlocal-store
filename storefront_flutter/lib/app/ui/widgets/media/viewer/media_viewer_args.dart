import 'package:storefront_flutter/app/types/cns_type.dart';

class MediaViewerArgsRequest {
  final List<CnsType>? cnsList;
  CnsType? cns;
  MediaViewerArgsRequest({ this.cns, this.cnsList});
}
