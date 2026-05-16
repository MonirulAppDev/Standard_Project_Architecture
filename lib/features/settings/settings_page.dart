import 'package:flutter/material.dart';
import 'package:spa_v2/core/widgets/app_scaffold.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      title: 'Settings',
      body: Center(
        child: Text('Settings Page'),
      ),
    );
  }
}
