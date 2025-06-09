import 'package:flutter/material.dart';
import 'package:heycooker_flutter/utils/log/log.dart';

class SuggestVideo extends StatelessWidget {
  const SuggestVideo({super.key});

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
                        "Khám phá và cảm nhận bằng Video",
                        style:
                            TextStyle(fontSize: 12, color: Color(0xFF777777)),
                      ),
                      Text(
                        "✌︎ Video nấu ăn được đề xuất",
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
              VideoCardList(),
              SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}

class VideoCardList extends StatelessWidget {
  const VideoCardList({super.key});

  final List<Map<String, String>> topics = const [
    {
      'title': "Cách làm Kim Chi chuẩn vị Hàn Quốc đón Tết Việt,  ",
      'video_id': 'l_j_HWv-LL0',
    },
    {
      'title':
          "BÁNH XÈO HÀN QUỐC. Cách làm bánh xèo Hàn Quốc ngon như nhà hàng",
      'video_id': '_HcS3fWLEGQ',
    },
    {
      'title': "Hướng Dẫn Làm Cơm Trộn Hàn Quốc",
      'video_id': 'J730p50xtu4',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195,
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
              child: VideoCard(
                title: topic['title'] ?? '',
                videoId: topic['video_id'] ?? '',
              ),
            ),
          );
        },
      ),
    );
  }
}

class VideoCard extends StatelessWidget {
  final String title;
  final String videoId;

  const VideoCard({super.key, required this.title, required this.videoId});

  @override
  Widget build(BuildContext context) {
    final url = "https://img.youtube.com/vi/$videoId/hqdefault.jpg";
    return SizedBox(
      width: 280,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity, // chiếm toàn bộ chiều ngang Column
            height: 157,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(url),
                fit: BoxFit.cover,
              ),
            ),
            clipBehavior: Clip.hardEdge,
            child: Image.asset(
              'assets/images/main/suggest_videos/play.png',
              width: 40,
              height: 40,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: const TextStyle(
              fontSize: 11.1,
              color: Colors.black
            ),
            maxLines: 2,
            // overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
