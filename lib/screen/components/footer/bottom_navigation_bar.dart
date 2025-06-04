import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bottom_navigation_bar_bloc.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color selectedColor = Color(0xFFFF6741);
    const Color unselectedColor = Color(0xFF333333);

    return BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
        builder: (context, state) {
      return Stack(
        alignment: Alignment.bottomCenter,
        clipBehavior: Clip.none,
        children: [
          BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedItemColor: Colors.orange,
            unselectedItemColor: Colors.black54,
            currentIndex: state.selectedIndex,
            onTap: (index) {
              debugPrint("BottomNavigationBar onTap");
              context
                  .read<BottomNavigationBloc>()
                  .add(BottomNavigationEvent.onItemSelected(index));
              // if (index != 2) {
              //   onItemSelected(index);
              // }
            },
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/images/footer/icon1.svg',
                  color: state.selectedIndex == 0
                      ? selectedColor
                      : unselectedColor,
                ),
                label: 'Khám phá',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/images/footer/icon2.svg',
                  color: state.selectedIndex == 1
                      ? selectedColor
                      : unselectedColor,
                ),
                label: 'Bếp của tôi',
              ),
              const BottomNavigationBarItem(
                icon: SizedBox.shrink(),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/images/footer/icon4.svg',
                  color: state.selectedIndex == 3
                      ? selectedColor
                      : unselectedColor,
                ),
                label: 'Yêu thích',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/images/footer/icon5.svg',
                  color: state.selectedIndex == 4
                      ? selectedColor
                      : unselectedColor,
                ),
                label: 'Menu',
              ),
            ],
          ),
          Positioned(
            top: -10,
            child: GestureDetector(
              onTap: () {
                context.read<BottomNavigationBloc>().add(
                      const BottomNavigationEvent.onAiChefTapped(),
                    );
              },
              child: Container(
                width: 70,
                height: 70,
                decoration: const BoxDecoration(
                  color: Color(0xFFFF6741),
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/images/footer/icon3.svg',
                      color: Colors.white,
                    ),
                    const SizedBox(height: 2),
                    const Text(
                      'Đầu bếp AI',
                      style: TextStyle(
                        fontSize: 8,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    });
  }
}
