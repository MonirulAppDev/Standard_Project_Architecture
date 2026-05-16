import 'package:flutter/material.dart';
import 'package:spa_v2/core/widgets/app_scaffold.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      title: 'Register',
      body: Center(
        child: Text('Register Page'),
      ),
    );
  }
}
