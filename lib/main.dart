import 'package:flutter/material.dart';
import './utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: RouteManager.splashScreen,
      onGenerateRoute: RouteManager.generateRoute,
    );
  }
}
