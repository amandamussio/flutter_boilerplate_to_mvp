
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate_to_mvp/modules/auth/presentation/cubit/auth_cubit.dart';
import 'package:flutter_boilerplate_to_mvp/modules/splash/splash.dart';
import 'package:flutter_boilerplate_to_mvp/core/injection/service_locator.dart';
import 'package:flutter_boilerplate_to_mvp/core/routes/app_router.dart';

@RoutePage() 
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocListener<AuthCubit, AuthState>(listener: (context, state) {
      state.maybeMap(
        authenticated: (_) => context.router.replace(HomeRoute()),
        unauthenticated: (_) => context.router.replace(LoginRoute()),
        orElse: () {},
      );
    }, 
    child: SplashView(),
    );
  }
}


class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
