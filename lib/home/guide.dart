import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Guide extends StatefulWidget {
  const Guide({super.key});

  @override
  State<Guide> createState() => _GuideState();
}

class _GuideState extends State<Guide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: const Color(0xff7c94b6),
          image: const DecorationImage(
            image: AssetImage('images/backgroud.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, bottom: 10),
              child: Text(
                'HƯỚNG DẪN CÁCH CHƠI',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    width: 350,
                    height: 90,
                    child: Text(
                      'Người chơi sẽ lần lượt vượt qua 15 câu hỏi. Người thắng cuộc là người vượt qua được 15 câu hỏi. Bạn sẽ có 5 sự trợ giúp: ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          children: [
                            guide(
                                'images/test.png', 'Loại bỏ 2 phương án sai. '),
                            guide('images/test.png', 'Hỏi ý kiến người thân. '),
                            guide('images/test.png', 'Hỏi ý kiến khán giả. '),
                            guide('images/test.png', 'Đổi câu hỏi. '),
                            guide('images/test.png', 'Mua đáp án bằng brain. '),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

guide(String help, String content) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Image(
                image: AssetImage(help),
                height: 50,
                width: 50,
              ),
            ),
            Container(
              width: 280,
              height: 50,
              child: Text(
                content,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
