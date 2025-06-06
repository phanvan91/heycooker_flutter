import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SuggestToday extends StatelessWidget {
  const SuggestToday({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFFF6741),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
      child: Column(
        children: [
          Column(
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
                        "Gợi ý hôm nay",
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                      Text(
                        "👍 Đề xuất công thức ngẫu nhiên",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Material(
                    color: Colors.transparent, // Để tránh nền trắng
                    child: InkWell(
                      borderRadius:
                          BorderRadius.circular(4), // ripple bo tròn nếu muốn
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
              const RecipeList(),
            ],
          ),
        ],
      ),
    );
  }
}


class RecipeList extends StatelessWidget {
  const RecipeList({super.key});

  final List<Map<String, String>> recipes = const [
    {
      'title': 'Lẩu gà ớt hiểm',
      'image': 'assets/images/main/suggest_today/1.png',
    },
    {
      'title': 'Bánh xèo miền Trung',
      'image': 'assets/images/main/suggest_today/2.png',
    },
    {
      'title': 'Lẩu gà lá é',
      'image': 'assets/images/main/suggest_today/3.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          return Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Stack(
                children: [
                  Image.asset(
                    recipe['image']!,
                    width: 140,
                    height: 140,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    left: 10,
                    bottom: 15,
                    child: SizedBox(
                      width: 124, // 👈 giới hạn chiều ngang để xuống dòng
                      child: Text(
                        recipe['title']!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

