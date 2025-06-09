import 'package:flutter/material.dart';
import 'package:heycooker_flutter/utils/log/log.dart';

class Topic extends StatelessWidget {
  const Topic({super.key});

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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hey! Cooker sẽ giúp bạn lựa chọn",
                        style:
                            TextStyle(fontSize: 12, color: Color(0xFF777777)),
                      ),
                      Text(
                        "🥰︎  Chủ đề mà bạn quan tâm là gì?",
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
              TopicCardList(),
              SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}

class TopicCardList extends StatelessWidget {
  const TopicCardList({super.key});

  final List<Map<String, String>> topics = const [
    {
      'title': "Món ăn đơn giản",
      'description': "Công thức đơn giản cho buổi sáng và buổi trưa",
      'background': 'assets/images/main/topics/1.png',
    },
    {
      'title': "Ăn kiêng",
      'description': "Ngon tuyệt với chế độ ăn ít tinh bột",
      'background': 'assets/images/main/topics/2.png',
    },
    {
      'title': "Món ăn cuối năm",
      'description': "Món ăn cho bữa tiệc tại gia",
      'background': 'assets/images/main/topics/3.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: topics.length,
        itemBuilder: (context, index) {
          final topic = topics[index];

          return Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: GestureDetector(
              onTap: () {
                log.info('Tapped on: ${topic['title']}');
                // log.warning("Dữ liệu không hợp lệ");
                // log.error("Đã xảy ra lỗi!");
              },
              child: TopicCard(
                title: topic['title'] ?? '',
                description: topic['description'] ?? '',
                background: topic['background'] ?? '',
              ),
            ),
          );
        },
      ),
    );
  }
}

class TopicCard extends StatelessWidget {
  final String title;
  final String description;
  final String background;
  final Color borderColor;
  final Color circleColor;

  const TopicCard({
    super.key,
    required this.title,
    required this.description,
    required this.background,
    this.borderColor = const Color(0xFFEEEEEE), // mặc định viền hồng nhạt
    this.circleColor = const Color(0xFFFF5252), // nền tròn đỏ
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 180,
      // margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 2),
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(background),
          fit: BoxFit.cover, // hoặc BoxFit.fill tùy bạn
        ),
        // color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            maxLines: 2,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          Text(
            description,
            style: const TextStyle(
              fontSize: 13,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
