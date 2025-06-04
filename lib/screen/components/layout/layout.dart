import 'package:flutter/material.dart';
import '../footer/bottom_navigation_bar.dart';
import '../header/header_main/header_main.dart';


class Layout extends StatelessWidget {
  final Widget body;
  final bool isScrollable;

  const Layout({
    Key? key,
    required this.body,
    this.isScrollable = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final content = Column(
      children: [
        const HeaderMain(),
        body,
      ],
    );

    return Scaffold(
      body: isScrollable ? SingleChildScrollView(child: content) : content,
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}