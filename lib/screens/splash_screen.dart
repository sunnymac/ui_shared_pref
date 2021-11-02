import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ui_shared_pref/utils/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<Timer> loadData() async {
    return Timer(const Duration(seconds: 3), loadDone);
  }

  loadDone() async {
    Navigator.of(context).pushNamed(RouteManager.registerScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Splash Screen"),
          ],
        ),
      ),
    );
  }
}
