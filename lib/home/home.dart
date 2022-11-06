import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Stack(children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xff7c94b6),
                  image: const DecorationImage(
                    image: AssetImage('images/backgroud.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Image(
                              image: AssetImage('images/user.png'),
                              height: 50,
                              width: 50,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Player',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                Container(
                                  child: Row(children: [
                                    Image(
                                      image: AssetImage('images/brain.png'),
                                      height: 30,
                                      width: 30,
                                    ),
                                    Text(
                                      ('3200'),
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ]),
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.yellow.shade800,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      border: Border.all(color: Colors.white)),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.settings,
                                  color: Color.fromARGB(255, 0, 247, 255),
                                  size: 40,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 120),
                      child: Container(
                        child: TextButton(
                          child: Text('CHƠI NGAY',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24),
                              textAlign: TextAlign.center),
                          onPressed: () {},
                        ),
                        width: 250,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.yellow.shade800,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border: Border.all(
                                color: Color.fromARGB(254, 255, 255, 255))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Container(
                        child: TextButton(
                          child: Text('BẢNG XẾP HẠNG',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24),
                              textAlign: TextAlign.center),
                          onPressed: () {},
                        ),
                        width: 250,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.yellow.shade800,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border: Border.all(color: Colors.white)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Container(
                        child: TextButton(
                          child: Text('LỊCH SỬ CHƠI',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24),
                              textAlign: TextAlign.center),
                          onPressed: () {},
                        ),
                        width: 250,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.yellow.shade800,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border: Border.all(color: Colors.white)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Container(
                        child: TextButton(
                          child: Text('XEM ĐIỂM',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24),
                              textAlign: TextAlign.center),
                          onPressed: () {},
                        ),
                        width: 250,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.yellow.shade800,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border: Border.all(color: Colors.white)),
                      ),
                    ),
                  ]),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: Image(
                                      height: 40,
                                      width: 40,
                                      image: AssetImage('images/home.png'),
                                    ),
                                  ),
                                  Text(
                                    'Home',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: Image(
                                      height: 40,
                                      width: 40,
                                      image: AssetImage('images/store.png'),
                                    ),
                                  ),
                                  Text(
                                    'Shop',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.yellow.shade800,
                      // borderRadius: BorderRadius.all(Radius.circular(20)),
                      // border: Border.all(color: Colors.white)
                    ),
                  ),
                ],
              )
            ]),
          ),
        ],
      ),
    );
  }
}
