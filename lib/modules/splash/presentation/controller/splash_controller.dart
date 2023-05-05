import 'package:auto_route/auto_route.dart';
import 'package:flutter_boilerplate_to_mvp/core/routes/app_router.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/material.dart';

@lazySingleton  
class SplashController {
  Future load(BuildContext context) async {

    print(context);

    bool userIsLogged = false;

    const Duration timeToDelayed = Duration(seconds: 1);


    bool userIsLogged = false;

    
    if(userIsLogged) {
     
    } else {
       Future.delayed(timeToDelayed).then(
         (value) => context.router.popAndPush(LoginRoute())
      );

    }

 
  }
}