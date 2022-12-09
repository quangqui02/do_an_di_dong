import 'dart:async';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

import 'package:doan_didong/screen/home/hometab.dart';
import 'package:doan_didong/screen/question_screen/audience_help.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home/home.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  State<QuestionScreen> createState() => _QuizScreenState();
}

final CountDownController _controller = CountDownController();

class _QuizScreenState extends State<QuestionScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // startTimer();
  }

  @override
  void dispose() {
    // timer!.cancel();
    // TODO: implement dispose
    super.dispose();
  }

  // int seconds = 20;
  Timer? timer;
  var currentQuestionIndex = 0;
  final int _duration = 20;

  startTimer() {
    const Duration(seconds: 1);
    // timer = Timer.periodic(const Duration(seconds: 1), (timer) {
    setState(() {
      if (_duration > 1) {
        _controller.pause();
        quitGame(context);
      }
    });
    // });
    // setState(() {
    //   if (_duration < 1) {
    //     quitGame(context);
    //   } else {
    //     _controller.pause();
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                    Container(
                      child: Row(
                        children: [
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
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(139, 126, 114, 114),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Colors.white)),
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
                            image: AssetImage('images/heart.png'),
                            height: 20,
                            width: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3),
                          child: Image(
                            image: AssetImage('images/heartclose.png'),
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
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            border: Border.all(
                                color: Color.fromARGB(255, 28, 74, 123))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1),
                      child: Container(
                        child: TextButton(
                            onPressed: () => phoneCallBack(context),
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
                            onPressed: () => showHelpAudience(context),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.01),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        // border: Border.all(color: Colors.yellow),
                        borderRadius: BorderRadius.circular(30)),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CircularCountDownTimer(
                          width: size.width * 0.1,
                          height: size.height * 0.05,
                          duration: _duration,
                          fillColor: Color.fromARGB(255, 255, 255, 255)!,
                          ringColor: Color.fromARGB(0, 255, 255, 255)!,
                          controller: _controller,
                          isReverse: true,
                          autoStart: true,
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: size.width * 0.3,
                    height: size.height * 0.07,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(137, 84, 84, 92),
                        border: Border.all(
                            color: Color.fromARGB(255, 255, 255, 255)),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      'Điểm: 200',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: size.width * 0.7),
                child: Text(
                  'Câu 1',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Một phút có bao nhiêu giây?',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    textAlign: TextAlign.left,
                  ),
                ),
                alignment: Alignment.center,
                height: 150,
                width: 300,
                decoration: BoxDecoration(
                    color: Color.fromARGB(137, 84, 84, 92),
                    borderRadius: BorderRadius.circular(10),
                    border:
                        Border.all(color: Color.fromARGB(255, 255, 255, 255))),
              ),
              Column(
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Container(
                        alignment: Alignment.centerLeft,
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(103, 84, 84, 92),
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                                color: Color.fromARGB(255, 255, 255, 255))),
                        child: Container(
                          margin: EdgeInsets.only(left: size.height * 0.02),
                          child: Text(
                            'D. 90 ',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Container(
                        alignment: Alignment.centerLeft,
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(103, 84, 84, 92),
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                                color: Color.fromARGB(255, 255, 255, 255))),
                        child: Container(
                          margin: EdgeInsets.only(left: size.height * 0.02),
                          child: Text(
                            'D. 90 ',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Container(
                        alignment: Alignment.centerLeft,
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(103, 84, 84, 92),
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                                color: Color.fromARGB(255, 255, 255, 255))),
                        child: Container(
                          margin: EdgeInsets.only(left: size.height * 0.02),
                          child: Text(
                            'D. 90 ',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Container(
                        alignment: Alignment.centerLeft,
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(103, 84, 84, 92),
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                                color: Color.fromARGB(255, 255, 255, 255))),
                        child: Container(
                          margin: EdgeInsets.only(left: size.height * 0.02),
                          child: Text(
                            'D. 90 ',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )),
                ],
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
                  size: 40,
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

Future<void> endScreen(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0))),
        contentPadding: EdgeInsets.only(top: 10.0),
        actions: <Widget>[
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    'BẠN MUỐN NGỪNG LƯỢT CHƠI',
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
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      width: 250,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'TIẾP TỤC CHƠI',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _controller.pause();
                    quitGame(context);
                  },
                  child: Container(
                    width: 250,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'NGỪNG LẠI',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    },
  );
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
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 100),
                      child: Text(
                        'CÀI ĐẶT',
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
                          size: 20,
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
                              'Âm nhạc',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
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
                              'Âm lượng',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
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
                      onPressed: () {
                        Navigator.pop(context);

                        endScreen(context);
                      },
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
                ),
              ],
            ),
          )
        ],
      );
    },
  );
}

Future<void> phoneCallBack(BuildContext context) {
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
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Text(
                    'CHỌN MỘT NGƯỜI TRỢ GIÚP',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: Column(
                                  children: [
                                    Image(
                                      image:
                                          AssetImage('images/businessman.png'),
                                      height: 85,
                                      width: 100,
                                    ),
                                    Text('Giáo sư',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: TextButton(
                              onPressed: () => answer(context),
                              child: Column(
                                children: [
                                  Image(
                                    image: AssetImage('images/businessman.png'),
                                    height: 85,
                                    width: 100,
                                  ),
                                  Text('Giáo sư',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: Column(
                                  children: [
                                    Image(
                                      image:
                                          AssetImage('images/businessman.png'),
                                      height: 85,
                                      width: 100,
                                    ),
                                    Text('Giáo sư',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: Column(
                                children: [
                                  Image(
                                    image: AssetImage('images/businessman.png'),
                                    height: 85,
                                    width: 100,
                                  ),
                                  Text('Giáo sư',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: Column(
                                  children: [
                                    Image(
                                      image:
                                          AssetImage('images/businessman.png'),
                                      height: 85,
                                      width: 100,
                                    ),
                                    Text('Giáo sư',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: Column(
                                children: [
                                  Image(
                                    image: AssetImage('images/businessman.png'),
                                    height: 85,
                                    width: 100,
                                  ),
                                  Text('Giáo sư',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
    },
  );
}

Future<void> answer(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0))),
        contentPadding: EdgeInsets.only(top: 10.0),
        actions: <Widget>[
          Center(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('images/businessman.png'),
                          height: 85,
                          width: 100,
                        ),
                        Text('Giáo sư',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            )),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Text(
                    'PHƯƠNG ÁN A',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    },
  );
}

showHelpAudience(BuildContext context) {
  showDialog<dynamic>(
    context: context,
    builder: (BuildContext context) => Center(
      child: HelpAudience(
        indexCorrect: 0,
        isTapFifty: false,
      ),
    ),
  );
}

Future<void> quitGame(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0))),
        contentPadding: EdgeInsets.only(top: 10.0),
        actions: <Widget>[
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Text(
                    'LƯỢT CHƠI ĐÃ KẾT THÚC',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                      child: Center(
                        child: Text('1230',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 45,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        width: 250,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  'THÊM LƯỢT CHƠI: 500',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
                                ),
                                Image(
                                  image: AssetImage('images/brain.png'),
                                  height: 30,
                                  width: 30,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        width: 250,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                  builder: (context) => QuestionScreen(),
                                ),
                                (route) => false);
                          },
                          child: Center(
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage('images/doicauhoi.png'),
                                  height: 30,
                                  width: 30,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 40),
                                  child: Text(
                                    'CHƠI LẠI',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        width: 250,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                  builder: (context) => HomeTab(),
                                ),
                                (route) => false);
                          },
                          child: Center(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.home,
                                  size: 30,
                                  color: Colors.white,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 40),
                                  child: Text(
                                    'TRANG CHỦ',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
    },
  );
}
