import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';

import 'service_locator.config.dart';


final locator = GetIt.I;
  
@InjectableInit()  
Future<void> configureDependencies({String env = 'production'}) async {
  locator.init(environment: env);
}
