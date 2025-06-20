import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import '../components/layout/layout.dart';
import 'my_ingredients/my_ingredient.dart';
import 'suggest_today/suggest_today.dart';
import 'taste/taste.dart';
import 'topics/topic.dart';
import 'suggest_videos/suggest_video.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

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
    child: const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyIngredient(),
        SizedBox(height: 10),
        SuggestToday(),
        Taste(),
        SizedBox(height: 10),
        Topic(),
        SizedBox(height: 10),
        SuggestVideo()
      ],
    ),
  );
}
