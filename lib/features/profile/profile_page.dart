import 'package:flutter/material.dart';
import 'package:spa_v2/core/widgets/app_scaffold.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      title: 'Profile',
      body: Center(
        child: Text('Profile Page'),
      ),
    );
  }
}
