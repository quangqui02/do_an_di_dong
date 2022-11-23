import 'package:doan_didong/screen/home/home.dart';
import 'package:flutter/material.dart';

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
          image: const DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      },
                      child: Image(
                        width: 30,
                        height: 30,
                        image: AssetImage('images/back.png'),
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                bottom: 10,
              ),
              child: Text(
                'HƯỚNG DẪN ',
                style: TextStyle(
                  fontSize: 45,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20),
              child: Container(
                // ignore: sort_child_properties_last
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      // ignore: prefer_const_constructors
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        // ignore: prefer_const_constructors
                        child: Text(
                          'Người chơi sẽ lần lượt vượt qua 15 câu hỏi. Người thắng cuộc là người vượt qua được 15 câu hỏi. Bạn sẽ có 5 sự trợ giúp: ',
                          textAlign: TextAlign.left,
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      // ignore: prefer_const_constructors
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                        ),
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              guide(
                                  'images/50.png', 'Loại bỏ 2 phương án sai. '),
                              guide('images/dienthoai.png',
                                  'Hỏi ý kiến người thân. '),
                              guide('images/khangia.png',
                                  'Hỏi ý kiến khán giả. '),
                              guide('images/doi.png', 'Đổi câu hỏi. '),
                              guide('images/muadapan.png',
                                  'Mua đáp án bằng brain. '),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10)),
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
              child: Container(
                // decoration: BoxDecoration(
                //   border: Border.all(width: 2.0, style: BorderStyle.solid),
                //   borderRadius: BorderRadius.circular(30),
                // ),
                child: Image(
                  image: AssetImage(help),
                  height: 50,
                  width: 50,
                ),
              ),
            ),
            Container(
              width: 215,
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
