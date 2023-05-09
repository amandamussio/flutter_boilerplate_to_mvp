import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_boilerplate_to_mvp/modules/splash/splash.dart';
import 'package:flutter_boilerplate_to_mvp/modules/login/login.dart';
import 'package:flutter_boilerplate_to_mvp/modules/sign_up/sign_up.dart';
import 'package:flutter_boilerplate_to_mvp/modules/home/home.dart';

part 'app_router.gr.dart';
        
@singleton
@AutoRouterConfig()      
class AppRouter extends _$AppRouter {      
    
  @override      
  final List<AutoRoute> routes = [      
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: SignUpRoute.page),
    AutoRoute(page: HomeRoute.page)
   ];   
 }    

