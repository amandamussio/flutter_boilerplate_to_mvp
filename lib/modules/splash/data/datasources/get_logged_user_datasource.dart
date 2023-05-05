import 'package:dartz/dartz.dart';
import 'package:flutter_boilerplate_to_mvp/modules/splash/domain/entity/auth_entity.dart';

abstract class GetLoggedUserDataSource {
  Future<Either<Exception, AuthEntity>> call();
}