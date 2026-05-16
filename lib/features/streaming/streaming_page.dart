import 'package:flutter/material.dart';
import 'package:spa_v2/core/widgets/app_scaffold.dart';

class StreamingPage extends StatelessWidget {
  const StreamingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      title: 'Streaming',
      body: Center(
        child: Text('Streaming Page'),
      ),
    );
  }
}
