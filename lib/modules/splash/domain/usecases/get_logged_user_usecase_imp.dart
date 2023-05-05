


import 'package:flutter_boilerplate_to_mvp/modules/splash/domain/entity/auth_entity.dart';
import 'package:flutter_boilerplate_to_mvp/modules/splash/domain/repositories/get_logged_user_repository.dart';

abstract class GetLoggedUserUsecaseImp {
  final GetLoggedUserRepository _getLoggedUserRepository;
  GetLoggedUserUsecaseImp(this._getLoggedUserRepository);

 @override
  Future<Exception, AuthEntity> call() async {
    // return await _getLoggedUserRepository.getLoggedUser();
  }
}