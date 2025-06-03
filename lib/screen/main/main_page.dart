import 'package:flutter/material.dart';
import '../../app/blocs/setting/setting_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../components/footer/footer.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingBloc, SettingState>(builder: (context, state) {
      debugPrint('Current State: $state');
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              buildHeader(),
              buildBody(),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomNavigationBar(
          selectedIndex: _selectedIndex,
          onItemSelected: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          onAiChefTapped: () {
            debugPrint("onAiChefTapped");
            // setState(() {
            //   _selectedIndex = 2;
            // });
          },
        ),
      );
    });
  }
}

Widget buildHeader() {
  return Container(
    height: 350,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/images/main/background_header.png'),
        fit: BoxFit.cover,
      ),
    ),
    child: SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(
              height: 55,
              child: Row(
                children: [
                  const Expanded(
                      child: Align(
                    alignment: Alignment.centerLeft,
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage:
                          AssetImage('assets/images/main/avatar_default.png'),
                      // Hoặc thêm ảnh avatar
                    ),
                  )),
                  Expanded(
                      child: Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/main/heycooker_logo.png',
                      fit: BoxFit.contain, // để ảnh hiển thị gọn gàng
                    ),
                  )),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                        mainAxisSize:
                            MainAxisSize.min, // Chỉ chiếm chỗ cần thiết
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Image.asset(
                              'assets/images/main/icon_search.png',
                              width: 28,
                              height: 28,
                            ),
                          ),
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              // Widget nền (ví dụ: icon giỏ hàng)
                              Image.asset(
                                'assets/images/main/icon_cart.png',
                                width: 28,
                                height: 28,
                              ),
                              // Widget được định vị (badge)
                              Positioned(
                                // Dùng Positioned để đặt widget này ở vị trí mong muốn
                                right: 0, // Đặt ở góc trên bên phải
                                top: -7,
                                child: Container(
                                  padding: const EdgeInsets.all(
                                      2), // Padding bên trong badge
                                  decoration: BoxDecoration(
                                    color: Colors.red, // Màu nền đỏ
                                    borderRadius: BorderRadius.circular(
                                        10), // Bo tròn để tạo hình tròn
                                  ),
                                  constraints: const BoxConstraints(
                                    // Đảm bảo kích thước tối thiểu để chứa số
                                    minWidth: 16,
                                    minHeight: 16,
                                  ),
                                  child: const Text(
                                    // Số hiển thị trong badge
                                    '2', // Số lượng cần hiển thị
                                    style: TextStyle(
                                      color: Colors.white, // Màu chữ trắng
                                      fontSize: 10, // Kích thước chữ nhỏ
                                    ),
                                    textAlign: TextAlign.center, // Căn giữa chữ
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Đầu bếp AI đã sẵn sàng \nĐề xuất món ăn cho bạn.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor:
                              const Color(0xFFFF6741), // Màu nền button
                          foregroundColor: Colors.white, // Màu chữ
                          // padding: const EdgeInsets.symmetric(
                          //     horizontal: 24, vertical: 12), // Padding
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50), // Bo góc
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/main/icon_camera.png'),
                            const SizedBox(width: 10),
                            const Text(
                              "Chọn hình ảnh\nhoặc chụp ảnh",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'assets/images/main/header_human.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
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
