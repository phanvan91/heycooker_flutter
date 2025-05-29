import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('SplashPage build');
    return Scaffold(
      body: Center(
        child: Text(
          'IntroPage',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}