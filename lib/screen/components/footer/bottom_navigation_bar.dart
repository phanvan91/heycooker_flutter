import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bottom_navigation_bar_bloc.dart';
import 'package:heycooker_flutter/utils/log/log.dart';
import 'package:auto_route/auto_route.dart';
import './../../../app/routes/app_route.gr.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    const Color selectedColor = Color(0xFFFF6741);
    const Color unselectedColor = Color(0xFF333333);

    return BlocListener<BottomNavigationBloc, BottomNavigationState>(
      listenWhen: (prev, curr) => prev.navigateTo != curr.navigateTo,
      listener: (context, state) {
        if (state.navigateTo != null) {
          log.info("listen: ${state.navigateTo}");
          context.router.replace(state.navigateTo!);
          // Reset để tránh navigate lại khi rebuild
          context.read<BottomNavigationBloc>().emit(
                state.copyWith(navigateTo: null),
              );
        }
      },
      child: BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
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
                  context
                      .read<BottomNavigationBloc>()
                      .add(BottomNavigationEvent.onItemSelected(index));
                },
                items: [
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/images/footer/icon1.svg',
                      colorFilter: ColorFilter.mode(
                        state.selectedIndex == 0
                            ? selectedColor
                            : unselectedColor,
                        BlendMode.srcIn,
                      ),
                    ),
                    label: 'Khám phá',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/images/footer/icon2.svg',
                      colorFilter: ColorFilter.mode(
                        state.selectedIndex == 1
                            ? selectedColor
                            : unselectedColor,
                        BlendMode.srcIn,
                      ),
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
                      colorFilter: ColorFilter.mode(
                        state.selectedIndex == 3
                            ? selectedColor
                            : unselectedColor,
                        BlendMode.srcIn,
                      ),
                    ),
                    label: 'Yêu thích',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/images/footer/icon5.svg',
                      colorFilter: ColorFilter.mode(
                        state.selectedIndex == 4
                            ? selectedColor
                            : unselectedColor,
                        BlendMode.srcIn,
                      ),
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
                          colorFilter: const ColorFilter.mode(
                            Colors.white,
                            BlendMode.srcIn,
                          ),
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
        },
      ),
    );
  }
}
