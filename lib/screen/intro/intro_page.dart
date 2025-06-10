import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:heycooker_flutter/app/routes/app_route.gr.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:heycooker_flutter/utils/log/log.dart';

@RoutePage()
@RoutePage()
class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final introKey = GlobalKey<IntroductionScreenState>();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    log.info('Current State: $isLastPage');
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30), // 10px trên dưới
          child: Stack(
            children: [
              IntroductionScreen(
                key: introKey,
                globalBackgroundColor: Colors.white,
                pages: [
                  _buildPage('assets/images/intro/intro1.png'),
                  _buildPage('assets/images/intro/intro1.png'),
                  _buildPage('assets/images/intro/intro1.png'),
                ],
                showSkipButton: false,
                showNextButton: false,
                showDoneButton: false,
                // done: const SizedBox.shrink(),
                globalFooter: isLastPage
                    ? Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              context.router.replace(const MainRoute());
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFFF6741),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 16),
                            ),
                            child: const Text(
                              '시작하기',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      )
                    : const SizedBox.shrink(),
                dotsDecorator: const DotsDecorator(
                  activeColor: Color(0xFFFF6741),
                ),
                onDone: () {
                  log.info('onDone');
                },
                onChange: (index) {
                  setState(() {
                    isLastPage = (index == 2); // index cuối cùng (3 page)
                  });
                },
              ),
              if (!isLastPage)
                Positioned(
                  bottom: 0,
                  right: 50,
                  child: TextButton(
                    onPressed: () {
                      // Thêm lệnh log của bạn ở đây, ví dụ dùng print
                      log.info('Nút Skip đã được nhấn');
                      // Gọi hàm skipToEnd() sau khi log
                      introKey.currentState?.skipToEnd();
                    },
                    child: const Text(
                      "Skip",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

PageViewModel _buildPage(String imagePath) {
  return PageViewModel(
    decoration: const PageDecoration(
      imagePadding: EdgeInsets.zero,
      contentMargin: EdgeInsets.zero,
      titlePadding: EdgeInsets.zero,
    ),
    titleWidget: const SizedBox.shrink(),
    bodyWidget: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 40), // Padding trái phải 20px
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Text(
                "연령별 레시피 추천 AI",
                style: TextStyle(
                  fontSize: 22,
                  color: Color(0xFF000000),
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      offset: Offset(0, 2),
                      blurRadius: 4,
                      color: Color(0x40000000),
                    ),
                  ],
                ),
              ),
              Text(
                "식단부터 요리 레시피 완벽 정리!",
                style: TextStyle(
                  fontSize: 22,
                  color: Color(0xFFFF6741),
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      offset: Offset(0, 2),
                      blurRadius: 4,
                      color: Color(0x40000000),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text(
                "매일 고민이던 하루 식단과 칼로리,",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF777777),
                  shadows: [
                    Shadow(
                      offset: Offset(0, 2),
                      blurRadius: 4,
                      color: Color(0x40000000),
                    ),
                  ],
                ),
              ),
              Text(
                "이제 고민하지말고 헤이!쿠커의 추천을 받아보세요.",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF777777),
                  shadows: [
                    Shadow(
                      offset: Offset(0, 2),
                      blurRadius: 4,
                      color: Color(0x40000000),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 100),
        Image.asset(
          imagePath,
          fit: BoxFit.cover,
          width: double.infinity, // Phủ hết chiều ngang
        ),
      ],
    ),
  );
}
