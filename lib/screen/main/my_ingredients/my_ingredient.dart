import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:heycooker_flutter/utils/log/log.dart';

class MyIngredient extends StatelessWidget {
  const MyIngredient({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF0C0D0E),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween, // ← tách trái phải
                      crossAxisAlignment:
                          CrossAxisAlignment.start, // nếu muốn canh theo top
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bạn đang không biết nấu món gì? 🤔",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF111111)),
                            ),
                            Text(
                              "Hãy chọn nguyên liệu sẵn có của bạn",
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xFF777777)),
                            ),
                          ],
                        ),
                        Material(
                          color: Colors.transparent, // Để tránh nền trắng
                          child: InkWell(
                            borderRadius: BorderRadius.circular(
                                4), // ripple bo tròn nếu muốn
                            onTap: () {
                              // Xử lý khi nhấn
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(
                                  4), // hoặc EdgeInsets.zero nếu muốn nhỏ nhất
                              child: SvgPicture.asset(
                                'assets/images/main/icon_refresh.svg',
                                width: 24,
                                height: 24,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const IngredientChips(),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity, // ép nút kéo hết chiều ngang
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.black,
                          minimumSize: const Size.fromHeight(50),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {
                          log.info('onPressed xử lý');
                        },
                        child: const Text(
                          'Xem các công thức từ nguyên liệu đã chọn',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        log.info('onTap xử lý khi nhấn');
                      },
                      child: Container(
                        height: 40,
                        width: double.infinity,
                        alignment: Alignment.center,
                        color: Colors.white, // hoặc để transparent nếu bạn muốn
                        child: const Text(
                          'Nguyên liệu của tôi',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF888888),
                            fontWeight: FontWeight.w500,
                            decoration:
                                TextDecoration.underline, // 👈 gạch dưới chữ
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                // const SizedBox(height: 20),
                // const SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class IngredientChips extends StatefulWidget {
  const IngredientChips({super.key});
  @override
  State<IngredientChips> createState() => _IngredientChipsState();
}

class _IngredientChipsState extends State<IngredientChips> {
  List<String> items = [
    'thịt bò',
    'cải xanh',
    'nước tương',
    'nấm rơm',
    'thịt chó',
    'thịt gà',
    'thịt ba chỉ'
  ];
  Set<String> selectedItems = {'cải xanh', 'nấm rơm'}; // giả sử đã chọn

  @override
  Widget build(BuildContext context) {
    log.info('selectedItems: $selectedItems');
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: items.map((item) {
        final isSelected = selectedItems.contains(item);

        return GestureDetector(
          onTap: () {
            setState(() {
              if (isSelected) {
                selectedItems.remove(item);
              } else {
                selectedItems.add(item);
              }
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: isSelected
                    ? const Color(0xFFFF6741)
                    : const Color(0xFF777777),
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              item,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: isSelected
                    ? const Color(0xFFFF6741)
                    : const Color(0xFF777777),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
