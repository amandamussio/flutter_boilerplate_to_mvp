import 'package:flutter_boilerplate_to_mvp/modules/splash/domain/entity/user_entity.dart';

class AuthEntity {
  AuthEntity({required this.token, required this.user});
  final String token;
  final UserEntity user;
}