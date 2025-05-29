import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:introduction_screen/introduction_screen.dart';

@RoutePage()
class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30), // 10px trên dưới
          child: IntroductionScreen(
            globalBackgroundColor: Colors.white,
            pages: [
              PageViewModel(
                titleWidget: const SizedBox.shrink(),
                bodyWidget: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "매일 고민인 하루 식단과 칼로리, 이제 고민하지 말고 헤이쿠커의 추천을 받아보세요.",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    Image.network(
                      'https://cdn-icons-png.flaticon.com/512/1046/1046857.png',
                      width: 200,
                    ),
                  ],
                ),
              ),
              PageViewModel(
                titleWidget: const SizedBox.shrink(),
                bodyWidget: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "매일 고민인 하루 식단과 칼로리, 이제 고민하지 말고 헤이쿠커의 추천을 받아보세요.",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    Image.network(
                      'https://cdn-icons-png.flaticon.com/512/1046/1046852.png',
                      width: 200,
                    ),
                  ],
                ),
              ),
              PageViewModel(
                titleWidget: const SizedBox.shrink(),
                bodyWidget: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "매일 고민인 하루 식단과 칼로리, 이제 고민하지 말고 헤이쿠커의 추천을 받아보세요.",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    Image.network(
                      'https://cdn-icons-png.flaticon.com/512/1046/1046853.png',
                      width: 200,
                    ),
                  ],
                ),
              ),
              PageViewModel(
                titleWidget: const SizedBox.shrink(),
                bodyWidget: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "매일 고민인 하루 식단과 칼로리, 이제 고민하지 말고 헤이쿠커의 추천을 받아보세요.",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    Image.network(
                      'https://cdn-icons-png.flaticon.com/512/1046/1046859.png',
                      width: 200,
                    ),
                  ],
                ),
              ),
              PageViewModel(
                titleWidget: const SizedBox.shrink(),
                bodyWidget: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "매일 고민인 하루 식단과 칼로리, 이제 고민하지 말고 헤이쿠커의 추천을 받아보세요.",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    Image.network(
                      'https://cdn-icons-png.flaticon.com/512/1046/1046858.png',
                      width: 200,
                    ),
                  ],
                ),
              ),
            ],
            onDone: () {
              // TODO: Navigate to main page
            },
            showSkipButton: true,
            skip: const Text("Skip"),
            next: const Icon(Icons.arrow_forward),
            done: const Text("시작하기",
                style: TextStyle(fontWeight: FontWeight.w600)),
          ),
        ),
      ),
    );
  }
}
