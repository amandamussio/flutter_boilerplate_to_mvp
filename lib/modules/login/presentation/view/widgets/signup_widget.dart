import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_boilerplate_to_mvp/core/routes/app_router.dart';

class SignupWidget extends StatelessWidget {
  const SignupWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(onPressed: () => context.pushRoute(SignupRoute()), child: Text('Ainda não tem cadastro? Inscreva-se'),),
    );
  }
}
