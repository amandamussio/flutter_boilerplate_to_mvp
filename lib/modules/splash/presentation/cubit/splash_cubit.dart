import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'splash_state.dart';

@lazySingleton  
class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial());

  load() async {
    bool userIsLogged = false;
    const Duration timeToDelayed = Duration(seconds: 1);
    // testa se o usuário está logado, se não estiver redireciona para a tela de login
    if(userIsLogged) {
      // Future.delayed(timeToDelayed).then(
      //   // (value) => Modular.to.navigate(initialRoute),
      // );
    } else {
      // Future.delayed(timeToDelayed).then(
      //   // (value) => AutoRouter.of(context).replaceNamed('/login'),
      // );
    }
    // se estiver logado redireciona para a tela principal    
  }
}
