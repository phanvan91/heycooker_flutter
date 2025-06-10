import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import '../components/layout/layout.dart';
@RoutePage()
class MyPantry extends StatelessWidget {
  const MyPantry({super.key});

  @override
  Widget build(BuildContext context) {
    return Layout(
      body: buildBody(context),
      isScrollable: true,
      statusBarIconBrightness: 'light',
    );
  }
}

Widget buildBody(BuildContext context) {
  return Container(
    color: const Color(0xFFF3F4F6),
    child: Text("EEEE"),
  );
}
