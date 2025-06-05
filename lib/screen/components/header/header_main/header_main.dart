import 'package:flutter/material.dart';

class HeaderMain extends StatelessWidget {
  const HeaderMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                                      textAlign:
                                          TextAlign.center, // Căn giữa chữ
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
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: const Color(0xFFFF6741),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
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
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxHeight: MediaQuery.of(context).size.height *
                              0.25, // Giới hạn tối đa 30% chiều cao màn hình
                        ),
                        child: Image.asset(
                          'assets/images/main/header_human.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
