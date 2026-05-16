import 'package:flutter/material.dart';
import 'package:spa_v2/app/app.dart';
import 'package:spa_v2/app/di/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}
