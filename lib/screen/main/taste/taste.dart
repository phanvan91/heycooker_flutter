import 'package:flutter/material.dart';
import 'package:heycooker_flutter/utils/log/log.dart';

class Taste extends StatelessWidget {
  const Taste({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
      child: const Column(
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
                        "Thỏa mãn vị giác",
                        style:
                            TextStyle(fontSize: 12, color: Color(0xFF777777)),
                      ),
                      Text(
                        "👌 Hương vị dành riêng cho bạn",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF111111)),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              FlavorCardList(),
              SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}

class FlavorCardList extends StatelessWidget {
  const FlavorCardList({super.key});

  final List<Map<String, String>> flavors = const [
    {
      'title': "Cay nồng\nhấp dẫn",
      'image': 'assets/images/main/taste/1.png',
      'hashtags': "#xao #nuong\n#ngaymua",
    },
    {
      'title': "Tươi mới,\nthanh đạm",
      'image': 'assets/images/main/taste/2.png',
      'hashtags': "#xao #nuong\n#ngaymua",
    },
    {
      'title': "Vị chua\nkích thích",
      'image': 'assets/images/main/taste/3.png',
      'hashtags': "#xao #nuong\n#ngaymua",
    },
    {
      'title': "Vị chua\nkích thích",
      'image': 'assets/images/main/taste/3.png',
      'hashtags': "#xao #nuong\n#ngaymua",
    },
    {
      'title': "Vị chua\nkích thích",
      'image': 'assets/images/main/taste/3.png',
      'hashtags': "#xao #nuong\n#ngaymua",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: flavors.length,
        itemBuilder: (context, index) {
          final flavor = flavors[index];

          return Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: GestureDetector(
              onTap: () {
                log.info('Tapped on: ${flavor['title']}');
                // log.warning("Dữ liệu không hợp lệ");
                // log.error("Đã xảy ra lỗi!");
              },
              child: FlavorCard(
                title: flavor['title'] ?? '',
                imagePath: flavor['image'] ?? '',
                hashtags: flavor['hashtags'] ?? '',
              ),
            ),
          );
        },
      ),
    );
  }
}

class FlavorCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final String hashtags;
  final Color borderColor;
  final Color circleColor;

  const FlavorCard({
    super.key,
    required this.title,
    required this.imagePath,
    required this.hashtags,
    this.borderColor = const Color(0xFFEEEEEE), // mặc định viền hồng nhạt
    this.circleColor = const Color(0xFFFF5252), // nền tròn đỏ
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 160,
      // margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            maxLines: 2,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 3),
          Image.asset(
            imagePath,
            width: 67,
            height: 67,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 3),
          Text(
            hashtags,
            style: const TextStyle(
              fontSize: 10,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}