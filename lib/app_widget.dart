import 'package:flutter/material.dart';
import 'package:flutter_boilerplate_to_mvp/core/routes/app_router.dart';
import 'package:flutter_boilerplate_to_mvp/l10n/l10n.dart';
import 'package:flutter_boilerplate_to_mvp/core/injection/service_locator.dart';

class AppWidget extends StatelessWidget {
  AppWidget({super.key});

  final _appRouter = locator<AppRouter>(); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: _appRouter.config(), 
      // routerDelegate: _appRouter.delegate(),
      // routeInformationParser: _appRouter.defaultRouteParser(),  
    );
  }
}
