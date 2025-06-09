import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../footer/bottom_navigation_bar.dart';
import '../header/header_main/header_main.dart';
import '../../../app/blocs/setting/setting_bloc.dart';

class Layout extends StatefulWidget {
  final Widget body;
  final bool isScrollable;
  final Color backgroundLayout;
  final String statusBarIconBrightness;

  const Layout({
    super.key,
    required this.body,
    this.isScrollable = false,
    this.backgroundLayout = const Color(0xFF0C0D0E),
    this.statusBarIconBrightness = 'dark',
  });

  @override
  State<Layout> createState() => LayoutState();
}

class LayoutState extends State<Layout> {
  @override
  void initState() {
    super.initState();
    context
        .read<SettingBloc>()
        .add(SettingEvent.changeStatusBarIcon(widget.statusBarIconBrightness));
  }

  @override
  Widget build(BuildContext context) {
    final content = Column(
      children: [
        const HeaderMain(),
        widget.body,
      ],
    );

    return BlocBuilder<SettingBloc, SettingState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: widget.backgroundLayout,
          body: widget.isScrollable
              ? SingleChildScrollView(child: content)
              : content,
          bottomNavigationBar: const CustomBottomNavigationBar(),
        );
      },
    );
  }
}
