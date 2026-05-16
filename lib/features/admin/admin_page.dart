import 'package:flutter/material.dart';
import 'package:spa_v2/core/widgets/app_scaffold.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      title: 'Admin',
      body: Center(
        child: Text('Admin Page'),
      ),
    );
  }
}
