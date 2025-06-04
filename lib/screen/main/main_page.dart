import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import '../components/layout/layout.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Layout(
      body: buildBody(),
      isScrollable: true,
    );
  }
}

Widget buildBody() {
  return Container(
    padding: const EdgeInsets.all(16.0),
    child: const Text(
      "Đây là nội dung body. Kéo lên để xem header scroll được, còn footer cố định.",
      style: TextStyle(fontSize: 16),
    ),
  );
}
