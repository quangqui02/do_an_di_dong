import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xff7c94b6),
              image: const DecorationImage(
                image: AssetImage('images/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Row(children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Image(
                                image: AssetImage('images/brain.png'),
                                height: 30,
                                width: 30,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Text(
                                ('3000'),
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ]),
                          height: 40,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 5, 255, 18),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              border: Border.all(color: Colors.white)),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(1),
                          child: Image(
                            image: AssetImage('images/heart.png'),
                            height: 20,
                            width: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(1),
                          child: Image(
                            image: AssetImage('images/heart.png'),
                            height: 20,
                            width: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(1),
                          child: Image(
                            image: AssetImage('images/heart.png'),
                            height: 20,
                            width: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(1),
                          child: Image(
                            image: AssetImage('images/timused.png'),
                            height: 20,
                            width: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3),
                          child: Image(
                            image: AssetImage('images/timused.png'),
                            height: 20,
                            width: 20,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 30),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(1),
                      child: Container(
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              '50:50',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            )),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 0, 0, 0),
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            border: Border.all(
                                color: Color.fromARGB(255, 28, 74, 123))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1),
                      child: Container(
                        child: TextButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.phone_callback,
                              color: Colors.white,
                              size: 35,
                            )),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 0, 0, 0),
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            border: Border.all(
                                color: Color.fromARGB(255, 28, 74, 123))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1),
                      child: Container(
                        child: TextButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.people_alt,
                              color: Colors.white,
                              size: 35,
                            )),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 0, 0, 0),
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            border: Border.all(
                                color: Color.fromARGB(255, 28, 74, 123))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1),
                      child: Container(
                        child: TextButton(
                          onPressed: () {},
                          child: Image(
                            height: 40,
                            width: 40,
                            image: AssetImage('images/doicauhoi.png'),
                          ),
                        ),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 0, 0, 0),
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            border: Border.all(
                                color: Color.fromARGB(255, 28, 74, 123))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1),
                      child: Container(
                        child: TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage('images/brain.png'),
                                height: 15,
                                width: 15,
                              ),
                              Text(
                                '100',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              )
                            ],
                          ),
                        ),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 0, 0, 0),
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            border: Border.all(
                                color: Color.fromARGB(255, 28, 74, 123))),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5, left: 30),
                      child: Row(
                        children: [
                          Text(
                            'Câu 1',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(3),
                        child: Text(
                          'Một Phút Có bao nhiêu giây?',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      alignment: Alignment.center,
                      height: 150,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(137, 84, 84, 92),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Color.fromARGB(255, 255, 255, 255))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3),
                            child: Container(
                              alignment: Alignment.bottomLeft,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'A. 60',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              height: 50,
                              width: 300,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(103, 84, 84, 92),
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(3),
                            child: Container(
                              alignment: Alignment.bottomLeft,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'B. 120',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              height: 50,
                              width: 300,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(103, 84, 84, 92),
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(3),
                            child: Container(
                              alignment: Alignment.bottomLeft,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'C. 30',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              height: 50,
                              width: 300,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(103, 84, 84, 92),
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(3),
                            child: Container(
                              alignment: Alignment.bottomLeft,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'D. 90',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              height: 50,
                              width: 300,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(103, 84, 84, 92),
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255))),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () => _dialogBuilder(context),
                child: Icon(
                  Icons.settings,
                  size: 50,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

Future<void> _dialogBuilder(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0))),
        contentPadding: EdgeInsets.only(top: 10.0),
        actions: <Widget>[
          Container(
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Text(
                      'Cài Đặt',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.close,
                        size: 40,
                        color: Colors.white,
                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(
                            Icons.music_note,
                            size: 30,
                            color: Colors.white,
                          ),
                          Text(
                            'Âm Nhạc',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          )
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(139, 126, 114, 114),
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(40)),
                  ),
                  Container(
                    child: TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(
                            Icons.volume_down,
                            size: 30,
                            color: Colors.white,
                          ),
                          Text(
                            'Âm Lượng',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          )
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(139, 126, 114, 114),
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(40)),
                  ),
                ],
              ),
              Container(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Thoát Game',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )),
                decoration: BoxDecoration(
                    color: Color.fromARGB(138, 255, 255, 255),
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(40)),
              )
            ]),
          )
        ],
      );
    },
  );
}
