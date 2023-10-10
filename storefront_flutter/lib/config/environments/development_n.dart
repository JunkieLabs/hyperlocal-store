

import 'package:storefront_flutter/config/env.dart';

class EnvDevelopmentN extends Env {
  @override
  String get indexRoute => 'labs/';

  @override
  String get title => '(DN) In-Local';

  @override
  String get apiUrl =>
      'http://localhost:3305';

}
