

import 'package:storefront_flutter/config/env.dart';

class EnvFinalRelase extends Env {
  @override
  String get indexRoute => 'splash/';

  @override
  String get title => 'InLocal';
  
  @override
  String get apiUrl =>  'http://localhost:3302';
  

  

}