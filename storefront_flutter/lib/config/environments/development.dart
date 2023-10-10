
import 'package:storefront_flutter/config/env.dart';

class EnvDevelopment extends Env {
  @override
  String get indexRoute => 'labs';

  @override
  String get title => '(D) In-Local';
  
  @override
  String get apiUrl => 'http://localhost:3303';


}