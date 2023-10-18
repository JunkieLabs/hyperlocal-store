import 'package:json_annotation/json_annotation.dart';

part 'cns_type.g.dart';

@JsonSerializable()
class CnsType {
  // @BuiltValueField(wireName: '_id')

  // final String? phone;
  // final String? email;

   final String? url;// "https://lh3.googleusercontent.com/a/AGNmyxYbeSapdkFMBNpISB6I6cTdAAp7Gy0Fr3J441csdw=s96-c",
            final int type;// 0,
            final String? mime;// "image/*",
            final String? path;// null,
            final String? thPath;// null,
            final String? thUrl;// "https://lh3.googleusercontent.com/a/AGNmyxYbeSapdkFMBNpISB6I6cTdAAp7Gy0Fr3J441csdw=s96-c"
            final String? assetPath;

  CnsType( 
      {  
        this.url, required this.type, this.mime, this.path, this.thPath, this.thUrl,
        this.assetPath
        })
      ;

  factory CnsType.fromJson(Map<String, dynamic> json) =>
      _$CnsTypeFromJson(json);
  Map<String, dynamic> toJson() => _$CnsTypeToJson(this);

 
}