import 'package:flutter_boilerplate_to_mvp/core/domain/services/http_services.dart';
import 'package:flutter_boilerplate_to_mvp/modules/splash/domain/entity/auth_entity.dart';
import 'package:flutter_boilerplate_to_mvp/modules/splash/domain/repositories/get_logged_user_repository.dart';
import 'package:dartz/dartz.dart';

class GetLoggedUserRepositoryImp implements GetLoggedUserRepository {

  final HttpService _httpService;
 GetLoggedUserRepositoryImp(this._httpService)

  @override
  Future<Exception, AuthEntity> call() async {
    try {
      await Future.delayed(Duration(seconds: 3));
      // var result = await _httpService.get(API.REQUEST_MOVIE_LIST);
      // return Right(MovieDto.fromJson(result.data));
    } catch (e) {
      return Left(Exception('Falha no datasource'));
    }
  }
}