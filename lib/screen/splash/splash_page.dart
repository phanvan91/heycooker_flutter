import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:heycooker_flutter/utils/log/log.dart';
import './../../app/routes/app_route.gr.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}


class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    // Chờ 3s rồi replace
    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return; 
      context.router.replace(const IntroRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    log.info('SplashPage build');
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/splash/splash.png',
           package: null,  // Thêm dòng này
           width: 200,
          )
      ),
    );
  }
}
