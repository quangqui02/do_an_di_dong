import 'package:doan_didong/screen/error.dart';
import 'package:doan_didong/screen/home/hometab.dart';
import 'package:doan_didong/screen/question_screen/time_textstyle.dart';
import 'package:flutter/material.dart';

import 'dart:async';

import '../../models/question/question.dart';
import '../appcolor.dart';
import 'audience_help.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int seconds = 30;
  Timer? timer;
  var currentQuestionIndex = 0;
  late Future quizz;
  int points = 0;
  int heart = 5;
  int brain = 100;
  bool isTapFifty = false;
  int doicauhoi = 1;
  int ykien = 1;
  int sodapan = 4;
  int muadapan = 5;
  int loaidapan = 1;
  int pointuser = 500;
  String indexanswer = '';
  int indexcorrect = 0;

  bool dapan = false;

  int addheart = 500;
  int call = 1;
  var answer5050 = [];
  var answer5050A = [];
  String answer5050B = '';
  bool dapan50 = false;
  String add1 = '';
  String add2 = '';
  @override
  void initState() {
    super.initState();
    quizz = getQuiz();
    startTimer();
  }

  @override
  void dispose() {
    timer!.cancel();
    super.dispose();
  }

  var isLoaded = false;

  var optionsList = [];
  var optionList50 = [];
  var optionsColor = [
    AppColor.background,
    AppColor.background,
    AppColor.background,
    AppColor.background,
    AppColor.background,
  ];

  resetColors() {
    optionsColor = [
      AppColor.background,
      AppColor.background,
      AppColor.background,
      AppColor.background,
      AppColor.background,
    ];
  }

//thoi gina van load cau hoi khi ketthuc
  startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (seconds > 0) {
          seconds--;
        } else {
          heart = heart - 1;
          timer.cancel();
          if (heart == 0) {
            quitGame(context);
          } else {
            gotoNextQuestion();
          }
        }
      });
    });
  }

  gotoNextQuestion() {
    isLoaded = false;
    currentQuestionIndex++;
    resetColors();
    timer!.cancel();
    dapan = false;
    seconds = 30;
    sodapan = 4;
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: Color(0xFF232431),
      // appBar: AppBar(
      //   backgroundColor: Color(0xFF232431),
      //   toolbarHeight: 40,
      //   elevation: 0,
      // ),
      body: SafeArea(
        child: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/background.png"),
                  fit: BoxFit.cover),
            ),
            child: FutureBuilder(
              future: quizz,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  var data = snapshot.data["results"];
                  indexanswer = data[currentQuestionIndex]["correct_answer"];
                  optionList50 =
                      data[currentQuestionIndex]["incorrect_answers"];
                  // answer5050 = data[currentQuestionIndex]["incorrect_answers"];
                  if (isLoaded == false) {
                    optionsList =
                        data[currentQuestionIndex]["incorrect_answers"];
                    // optionList50 = optionsList;
                    // answer5050 = optionList50;
                    optionsList.add(indexanswer);
                    optionsList.shuffle();
                    isLoaded = true;
                  }
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
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
                                      pointuser.toString(),
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  border: Border.all(color: Colors.white)),
                            ),
                            TextButton(
                              onPressed: () => _dialogBuilder(context),
                              child: Icon(
                                Icons.settings,
                                size: 40,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 1),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(1),
                                child: Container(
                                  child: TextButton(
                                      onPressed: () {
                                        setState(() {
                                          if (loaidapan == 1) {
                                            sodapan = 2;
                                            // // optionList50 = optionList50[1];
                                            // //optionList50.remove(0);
                                            for (int i = 0;
                                                i < optionList50.length;
                                                i++) {
                                              if (optionList50[i].toString() ==
                                                  indexanswer.toString()) {
                                                indexcorrect = i;
                                                break;
                                              }
                                            }
                                            if (indexcorrect == 0 ||
                                                indexcorrect == 1) {
                                              optionList50.removeAt(2);
                                              optionList50.removeAt(2);

                                              //optionList50.length = 2;
                                            } else {
                                              optionList50.removeAt(0);
                                              optionList50.removeAt(0);

                                              //optionList50.length = 2;
                                            }
                                            // optionList50.length = 1;
                                            // optionList50.add(indexanswer);
                                            // optionList50.shuffle();

                                            loaidapan = 0;
                                          } else {
                                            error(context,
                                                'Bạn đã dùng hết lượt');
                                          }
                                        });
                                      },
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
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(30)),
                                      border: Border.all(
                                          color: Color.fromARGB(
                                              255, 28, 74, 123))),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(1),
                                child: Container(
                                  child: TextButton(
                                      onPressed: () {
                                        setState(() {
                                          if (call == 1) {
                                            phoneCallBack(context);
                                          } else {
                                            error(context,
                                                'Bạn đã dùng hết lượt');
                                          }
                                        });
                                      },
                                      //=> phoneCallBack(context),
                                      child: Icon(
                                        Icons.phone_callback,
                                        color: Colors.white,
                                        size: 35,
                                      )),
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(40)),
                                      border: Border.all(
                                          color: Color.fromARGB(
                                              255, 28, 74, 123))),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(1),
                                child: Container(
                                  child: TextButton(
                                      onPressed: () {
                                        setState(() {
                                          if (ykien == 1 && sodapan == 4) {
                                            showDialog<dynamic>(
                                              context: context,
                                              builder: (BuildContext context) =>
                                                  Center(
                                                child: HelpAudience(
                                                  indexCorrect: sodapan,
                                                  isTapFifty: false,
                                                ),
                                              ),
                                            );
                                            ykien = 0;
                                          } else if (ykien == 1 &&
                                              sodapan == 2) {
                                            showDialog<dynamic>(
                                              context: context,
                                              builder: (BuildContext context) =>
                                                  Center(
                                                child: HelpAudience(
                                                  indexCorrect: sodapan,
                                                  isTapFifty: true,
                                                ),
                                              ),
                                            );
                                            ykien = 0;
                                          } else {
                                            error(context,
                                                'Bạn đã dùng hết lượt');
                                          }
                                        });
                                      },
                                      child: Icon(
                                        Icons.people_alt,
                                        color: Colors.white,
                                        size: 35,
                                      )),
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(40)),
                                      border: Border.all(
                                          color: Color.fromARGB(
                                              255, 28, 74, 123))),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(1),
                                child: Container(
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        if (doicauhoi == 1) {
                                          gotoNextQuestion();
                                          doicauhoi = 0;
                                        } else {
                                          error(
                                              context, 'Bạn đã dùng hết lượt');
                                        }
                                      });
                                    },
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
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(40)),
                                      border: Border.all(
                                          color: Color.fromARGB(
                                              255, 28, 74, 123))),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(1),
                                child: Container(
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        if (muadapan > 0 &&
                                            pointuser >= brain) {
                                          pointuser = pointuser - brain;
                                          for (int i = 0;
                                              i < optionList50.length;
                                              i++) {
                                            if (optionList50[i].toString() ==
                                                indexanswer.toString()) {
                                              indexcorrect = i;

                                              break;
                                            }
                                          }
                                          optionsColor[indexcorrect] =
                                              AppColor.purple;
                                          brain = brain + 50;
                                          muadapan--;
                                          //gotoNextQuestion();
                                        } else if (pointuser < brain &&
                                            muadapan > 0) {
                                          error(context, 'Brain bạn không đủ');
                                        } else {
                                          error(
                                              context, 'Bạn đã dùng hết lượt');
                                        }
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Image(
                                          image: AssetImage('images/brain.png'),
                                          height: 15,
                                          width: 15,
                                        ),
                                        Text(
                                          brain.toString(),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15),
                                        )
                                      ],
                                    ),
                                  ),
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(40)),
                                      border: Border.all(
                                          color: Color.fromARGB(
                                              255, 28, 74, 123))),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(left: 15),
                              width: 110,
                              height: 45,
                              decoration: BoxDecoration(
                                color: AppColor.background,
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                    width: 1, color: AppColor.fieldColor),
                              ),
                              child: Text(
                                "Mạng: ${heart}",
                                style: TextStyle(
                                  color: AppColor.fieldColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  normalText(
                                      color: Color.fromARGB(255, 236, 21, 21),
                                      size: 24,
                                      text: "$seconds"),
                                  SizedBox(
                                    width: 40,
                                    height: 40,
                                    child: CircularProgressIndicator(
                                      value: seconds / 30,
                                      valueColor: const AlwaysStoppedAnimation(
                                          Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(right: 15),
                              width: 110,
                              height: 45,
                              decoration: BoxDecoration(
                                color: AppColor.background,
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                    width: 1, color: AppColor.fieldColor),
                              ),
                              child: Text(
                                "Điểm: ${points}",
                                style: TextStyle(
                                  color: AppColor.fieldColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: size.width - 20,
                          height: size.height - 570,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: AppColor.background,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              width: 1.5,
                              color: AppColor.fieldColor,
                            ),
                          ),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Câu hỏi số ${currentQuestionIndex + 1}',
                                  style: TextStyle(
                                    color: AppColor.fieldColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: Text(
                                  "${data[currentQuestionIndex]["question"]}",
                                  style: TextStyle(
                                    color: AppColor.fieldColor,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Column(
                          children: [
                            Container(
                              width: size.width - 20,
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: optionsList.length,
                                itemBuilder: (context, index) {
                                  var answer = data[currentQuestionIndex]
                                      ["correct_answer"];
                                  return GestureDetector(
                                    onTap: () {
                                      if (dapan == true) {
                                        return;
                                      }
                                      setState(() {
                                        optionsColor[index] =
                                            AppColor.lightblackbtn;
                                        Future.delayed(Duration(seconds: 1));
                                        if (answer.toString() ==
                                            optionsList[index].toString()) {
                                          optionsColor[index] = AppColor.green;
                                          points = points + 10;
                                          dapan = true;
                                        } else {
                                          optionsColor[index] =
                                              AppColor.redbtn2;
                                          dapan = true;
                                          heart = heart - 1;
                                        }
                                        if (heart == 0) {
                                          quitGame(context);
                                          timer!.cancel();
                                        }
                                        if (currentQuestionIndex <
                                                data.length - 1 &&
                                            heart > 0) {
                                          Future.delayed(
                                              const Duration(seconds: 1), () {
                                            gotoNextQuestion();
                                          });
                                        } else {
                                          timer!.cancel();
                                        }
                                      });
                                    },
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(
                                              bottom: 18.5),
                                          alignment: Alignment.center,
                                          width: size.width - 20,
                                          padding: const EdgeInsets.all(16),
                                          decoration: BoxDecoration(
                                            color: optionsColor[index],
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            border: Border.all(
                                              width: 1,
                                              color: AppColor.fieldColor,
                                            ),
                                          ),
                                          child: Text(
                                            '${optionsList[index].toString()}',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: AppColor.fieldColor,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                } else {
                  return Container(
                    child: Column(
                      children: [
                        Center(
                          child: CircularProgressIndicator(
                            valueColor:
                                AlwaysStoppedAnimation(AppColor.fieldColor),
                          ),
                        ),
                        Text(
                          "Xin vui lòng đợi",
                          style: TextStyle(
                            color: AppColor.fieldColor,
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }

  // int getCorrectIndex() {
  //   for (int j = 0; j < 4; j++) {
  //     if (optionsList[j] == optionsList[j].indexanswer) {
  //       return j;
  //     }
  //   }
  //   return 0;
  // }

  phoneCallBack(BuildContext context) {
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
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    answer(context);
                                    call = 0;
                                  },

                                  //=> answer(context),
                                  child: Column(
                                    children: [
                                      Image(
                                        image: AssetImage(
                                            'images/businessman.png'),
                                        height: 85,
                                        width: 100,
                                      ),
                                      Text('Mr.Tiến',
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
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  answer(context);
                                  call = 0;
                                },
                                child: Column(
                                  children: [
                                    Image(
                                      image:
                                          AssetImage('images/businessman.png'),
                                      height: 85,
                                      width: 100,
                                    ),
                                    Text('Mr.Nguyên',
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
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    answer(context);
                                    call = 0;
                                  },
                                  child: Column(
                                    children: [
                                      Image(
                                        image: AssetImage(
                                            'images/businessman.png'),
                                        height: 85,
                                        width: 100,
                                      ),
                                      Text('Mr.Đính',
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
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  answer(context);
                                  call = 0;
                                },
                                child: Column(
                                  children: [
                                    Image(
                                      image:
                                          AssetImage('images/businessman.png'),
                                      height: 85,
                                      width: 100,
                                    ),
                                    Text('Mr.Hảo',
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
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    answer(context);
                                    call = 0;
                                  },
                                  child: Column(
                                    children: [
                                      Image(
                                        image: AssetImage(
                                            'images/businessman.png'),
                                        height: 85,
                                        width: 100,
                                      ),
                                      Text('Mr.Dũng',
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
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  answer(context);
                                  call = 0;
                                },
                                child: Column(
                                  children: [
                                    Image(
                                      image:
                                          AssetImage('images/businessman.png'),
                                      height: 85,
                                      width: 100,
                                    ),
                                    Text('Mr.Anh',
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

  answer(BuildContext context) {
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
                      indexanswer,
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

  quitGame(BuildContext context) {
    return showDialog<void>(
      barrierDismissible: false,
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
                          child: Text(points.toString(),
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
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  if (heart == 0 && pointuser >= addheart) {
                                    heart = heart + 1;
                                    Navigator.pop(context);
                                    gotoNextQuestion();
                                    pointuser = pointuser - addheart;
                                  } else if (heart > 0 &&
                                      pointuser >= addheart) {
                                    Navigator.pop(context);
                                    pointuser = pointuser - addheart;
                                  } else {
                                    error(context, 'Brain bạn không đủ');
                                  }
                                });
                              },
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

  _dialogBuilder(BuildContext context) {
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
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
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
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
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

  endScreen(BuildContext context) {
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
                      setState(() {
                        quitGame(context);
                        timer!.cancel();
                      });
                    },
                    //=> quitGame(context),
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
}

// Future<void> endScreen(BuildContext context) {
//   return showDialog<void>(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         backgroundColor: Colors.blue,
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(Radius.circular(32.0))),
//         contentPadding: EdgeInsets.only(top: 10.0),
//         actions: <Widget>[
//           Center(
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(top: 10, bottom: 10),
//                   child: Text(
//                     'BẠN MUỐN NGỪNG LƯỢT CHƠI',
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 TextButton(
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                   },
//                   child: Padding(
//                     padding: const EdgeInsets.all(6.0),
//                     child: Container(
//                       width: 250,
//                       decoration: BoxDecoration(
//                         border: Border.all(
//                           color: Colors.white,
//                           width: 2.0,
//                         ),
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                       child: Center(
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Text(
//                             'TIẾP TỤC CHƠI',
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 19,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 TextButton(
//                   onPressed: () => quitGame(context),
//                   child: Container(
//                     width: 250,
//                     decoration: BoxDecoration(
//                       border: Border.all(
//                         color: Colors.white,
//                         width: 2.0,
//                       ),
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     child: Center(
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text(
//                           'NGỪNG LẠI',
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 19,
//                               fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       );
//     },
//   );
// }

// Future<void> _dialogBuilder(BuildContext context) {
//   return showDialog<void>(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         backgroundColor: Colors.blue,
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(Radius.circular(32.0))),
//         contentPadding: EdgeInsets.only(top: 10.0),
//         actions: <Widget>[
//           Container(
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 100),
//                       child: Text(
//                         'CÀI ĐẶT',
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                     TextButton(
//                         onPressed: () {
//                           Navigator.of(context).pop();
//                         },
//                         child: Icon(
//                           Icons.close,
//                           size: 20,
//                           color: Colors.white,
//                         ))
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Container(
//                       child: TextButton(
//                         onPressed: () {},
//                         child: Column(
//                           children: [
//                             Icon(
//                               Icons.music_note,
//                               size: 30,
//                               color: Colors.white,
//                             ),
//                             Text(
//                               'Âm nhạc',
//                               style:
//                                   TextStyle(color: Colors.white, fontSize: 12),
//                             )
//                           ],
//                         ),
//                       ),
//                       decoration: BoxDecoration(
//                           color: Color.fromARGB(139, 126, 114, 114),
//                           border: Border.all(color: Colors.black),
//                           borderRadius: BorderRadius.circular(40)),
//                     ),
//                     Container(
//                       child: TextButton(
//                         onPressed: () {},
//                         child: Column(
//                           children: [
//                             Icon(
//                               Icons.volume_down,
//                               size: 30,
//                               color: Colors.white,
//                             ),
//                             Text(
//                               'Âm lượng',
//                               style:
//                                   TextStyle(color: Colors.white, fontSize: 12),
//                             )
//                           ],
//                         ),
//                       ),
//                       decoration: BoxDecoration(
//                           color: Color.fromARGB(139, 126, 114, 114),
//                           border: Border.all(color: Colors.black),
//                           borderRadius: BorderRadius.circular(40)),
//                     ),
//                   ],
//                 ),
//                 Container(
//                   child: TextButton(
//                       onPressed: () {
//                         Navigator.pop(context);

//                         endScreen(context);
//                       },
//                       child: Text(
//                         'Thoát Game',
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 15,
//                             fontWeight: FontWeight.bold),
//                       )),
//                   decoration: BoxDecoration(
//                       color: Color.fromARGB(138, 255, 255, 255),
//                       border: Border.all(color: Colors.black),
//                       borderRadius: BorderRadius.circular(40)),
//                 ),
//               ],
//             ),
//           )
//         ],
//       );
//     },
//   );
// }

// Future<void> phoneCallBack(BuildContext context) {
//   return showDialog<void>(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         backgroundColor: Colors.blue,
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(Radius.circular(32.0))),
//         contentPadding: EdgeInsets.only(top: 10.0),
//         actions: <Widget>[
//           Container(
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(7.0),
//                   child: Text(
//                     'CHỌN MỘT NGƯỜI TRỢ GIÚP',
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 22,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(bottom: 10),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(right: 10.0),
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 border: Border.all(
//                                   color: Colors.white,
//                                   width: 2.0,
//                                 ),
//                                 borderRadius: BorderRadius.circular(20),
//                               ),
//                               child: TextButton(
//                                 onPressed: () {},
//                                 child: Column(
//                                   children: [
//                                     Image(
//                                       image:
//                                           AssetImage('images/businessman.png'),
//                                       height: 85,
//                                       width: 100,
//                                     ),
//                                     Text('Giáo sư',
//                                         style: TextStyle(
//                                           color: Colors.white,
//                                           fontSize: 20,
//                                         )),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             decoration: BoxDecoration(
//                               border: Border.all(
//                                 color: Colors.white,
//                                 width: 2.0,
//                               ),
//                               borderRadius: BorderRadius.circular(20),
//                             ),
//                             child: TextButton(
//                               onPressed: () => answer(context),
//                               child: Column(
//                                 children: [
//                                   Image(
//                                     image: AssetImage('images/businessman.png'),
//                                     height: 85,
//                                     width: 100,
//                                   ),
//                                   Text('Giáo sư',
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 20,
//                                       )),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(bottom: 10),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(right: 10.0),
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 border: Border.all(
//                                   color: Colors.white,
//                                   width: 2.0,
//                                 ),
//                                 borderRadius: BorderRadius.circular(20),
//                               ),
//                               child: TextButton(
//                                 onPressed: () {},
//                                 child: Column(
//                                   children: [
//                                     Image(
//                                       image:
//                                           AssetImage('images/businessman.png'),
//                                       height: 85,
//                                       width: 100,
//                                     ),
//                                     Text('Giáo sư',
//                                         style: TextStyle(
//                                           color: Colors.white,
//                                           fontSize: 20,
//                                         )),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             decoration: BoxDecoration(
//                               border: Border.all(
//                                 color: Colors.white,
//                                 width: 2.0,
//                               ),
//                               borderRadius: BorderRadius.circular(20),
//                             ),
//                             child: TextButton(
//                               onPressed: () {},
//                               child: Column(
//                                 children: [
//                                   Image(
//                                     image: AssetImage('images/businessman.png'),
//                                     height: 85,
//                                     width: 100,
//                                   ),
//                                   Text('Giáo sư',
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 20,
//                                       )),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(bottom: 10),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(right: 10.0),
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 border: Border.all(
//                                   color: Colors.white,
//                                   width: 2.0,
//                                 ),
//                                 borderRadius: BorderRadius.circular(20),
//                               ),
//                               child: TextButton(
//                                 onPressed: () {},
//                                 child: Column(
//                                   children: [
//                                     Image(
//                                       image:
//                                           AssetImage('images/businessman.png'),
//                                       height: 85,
//                                       width: 100,
//                                     ),
//                                     Text('Giáo sư',
//                                         style: TextStyle(
//                                           color: Colors.white,
//                                           fontSize: 20,
//                                         )),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             decoration: BoxDecoration(
//                               border: Border.all(
//                                 color: Colors.white,
//                                 width: 2.0,
//                               ),
//                               borderRadius: BorderRadius.circular(20),
//                             ),
//                             child: TextButton(
//                               onPressed: () {},
//                               child: Column(
//                                 children: [
//                                   Image(
//                                     image: AssetImage('images/businessman.png'),
//                                     height: 85,
//                                     width: 100,
//                                   ),
//                                   Text('Giáo sư',
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 20,
//                                       )),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       );
//     },
//   );
// }

// Future<void> answer(BuildContext context) {
//   return showDialog<void>(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         backgroundColor: Colors.blue,
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(Radius.circular(32.0))),
//         contentPadding: EdgeInsets.only(top: 10.0),
//         actions: <Widget>[
//           Center(
//             child: Column(
//               children: [
//                 Container(
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                       color: Colors.white,
//                       width: 2.0,
//                     ),
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   child: TextButton(
//                     onPressed: () {},
//                     child: Column(
//                       children: [
//                         Image(
//                           image: AssetImage('images/businessman.png'),
//                           height: 85,
//                           width: 100,
//                         ),
//                         Text('Giáo sư',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 20,
//                             )),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(7.0),
//                   child: Text(
//                     'PHƯƠNG ÁN A',
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 22,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       );
//     },
//   );
// }

// Future<void> quitGame(BuildContext context) {
//   return showDialog<void>(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         backgroundColor: Colors.blue,
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(Radius.circular(32.0))),
//         contentPadding: EdgeInsets.only(top: 10.0),
//         actions: <Widget>[
//           Center(
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 10, top: 10),
//                   child: Text(
//                     'LƯỢT CHƠI ĐÃ KẾT THÚC',
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(top: 8.0, bottom: 8),
//                       child: Center(
//                         child: Text('1230',
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 45,
//                                 fontWeight: FontWeight.bold)),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(6.0),
//                       child: Container(
//                         width: 250,
//                         decoration: BoxDecoration(
//                           border: Border.all(
//                             color: Colors.white,
//                             width: 2.0,
//                           ),
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                         child: Center(
//                           child: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Row(
//                               children: [
//                                 Text(
//                                   'THÊM LƯỢT CHƠI: 500',
//                                   style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 19,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                                 Image(
//                                   image: AssetImage('images/brain.png'),
//                                   height: 30,
//                                   width: 30,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(6.0),
//                       child: Container(
//                         width: 250,
//                         decoration: BoxDecoration(
//                           border: Border.all(
//                             color: Colors.white,
//                             width: 2.0,
//                           ),
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                         child: TextButton(
//                           onPressed: () {
//                             Navigator.of(context).pushAndRemoveUntil(
//                                 MaterialPageRoute(
//                                   builder: (context) => QuestionScreen(),
//                                 ),
//                                 (route) => false);
//                           },
//                           child: Center(
//                             child: Row(
//                               children: [
//                                 Image(
//                                   image: AssetImage('images/doicauhoi.png'),
//                                   height: 30,
//                                   width: 30,
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.symmetric(
//                                       horizontal: 40),
//                                   child: Text(
//                                     'CHƠI LẠI',
//                                     style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 19,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(6.0),
//                       child: Container(
//                         width: 250,
//                         decoration: BoxDecoration(
//                           border: Border.all(
//                             color: Colors.white,
//                             width: 2.0,
//                           ),
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                         child: TextButton(
//                           onPressed: () {
//                             Navigator.of(context).pushAndRemoveUntil(
//                                 MaterialPageRoute(
//                                   builder: (context) => HomeTab(),
//                                 ),
//                                 (route) => false);
//                           },
//                           child: Center(
//                             child: Row(
//                               children: [
//                                 Icon(
//                                   Icons.home,
//                                   size: 30,
//                                   color: Colors.white,
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.symmetric(
//                                       horizontal: 40),
//                                   child: Text(
//                                     'TRANG CHỦ',
//                                     style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 19,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       );
//     },
//   );
// }
