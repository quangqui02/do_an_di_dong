import 'package:doan_didong/screen/home/home.dart';
import 'package:doan_didong/screen/home/hometab.dart';
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
                        Navigator.pop(context);
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
                bottom: 20,
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
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Người chơi sẽ lần lượt vượt qua 15 câu hỏi. Người thắng cuộc là người vượt qua được 15 câu hỏi. Bạn sẽ có 5 sự trợ giúp: ',
                        textAlign: TextAlign.left,
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.white,
                                      width: 1.0,
                                      style: BorderStyle.solid),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '50:50',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 19,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Center(
                              child: Text(
                                'Loại bỏ 2 phương án sai. ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white,
                                    width: 1.0,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.phone_callback,
                                    color: Colors.white,
                                    size: 35,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              'Hỏi ý kiến người thân.  ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.white,
                                      width: 1.0,
                                      style: BorderStyle.solid),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.people_alt,
                                      color: Colors.white,
                                      size: 35,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Center(
                              child: Text(
                                'Hỏi ý kiến khán giả. ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white,
                                    width: 1.0,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    height: 40,
                                    width: 40,
                                    image: AssetImage('images/doicauhoi.png'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              'Đổi câu hỏi.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.white,
                                      width: 1.0,
                                      style: BorderStyle.solid),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Image(
                                          image: AssetImage('images/brain.png'),
                                          height: 15,
                                          width: 15,
                                        ),
                                        Text(
                                          '100',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Center(
                              child: Text(
                                'Mua đáp án bằng brain. ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(151, 128, 138, 145),
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ],
        ),
      ),
    );

    // guide(
    //     'images/50.png', 'Loại bỏ 2 phương án sai. '),
    // guide('images/dienthoai.png',
    //     'Hỏi ý kiến người thân. '),
    // guide('images/khangia.png',
    //     'Hỏi ý kiến khán giả. '),
    // guide('images/doi.png', 'Đổi câu hỏi. '),
    // guide('images/muadapan.png',
    //     'Mua đáp án bằng brain. '),
  }
}
