import 'package:doan_didong/question_screen/quiz_maker.dart';
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
                image: AssetImage('images/backgroud.jpg'),
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
                              padding: const EdgeInsets.only(right: 20),
                              child: Image(
                                image: AssetImage('images/brain.png'),
                                height: 30,
                                width: 30,
                              ),
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
                      child: Text(
                        'Một Phút Có bao nhiêu giây?',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                      alignment: Alignment.center,
                      height: 100,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 8, 0, 255),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Color.fromARGB(255, 255, 255, 255))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
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
                                  color: Color.fromARGB(255, 8, 0, 255),
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
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
                                  color: Color.fromARGB(255, 8, 0, 255),
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
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
                                  color: Color.fromARGB(255, 8, 0, 255),
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
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
                                  color: Color.fromARGB(255, 8, 0, 255),
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
                onPressed: () {},
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

// class QuestionScreen extends StatefulWidget {
//   QuestionScreen({Key? key, required this.questionData});

//   final questionData;

//   @override
//   State<QuestionScreen> createState() => _QuestionScreenState();
// }

// class _QuestionScreenState extends State<QuestionScreen> {
//   @override
//   void initState() {
//     super.initState();
//     quizMaker.getList(widget.questionData);
//   }

//   QuizMaker quizMaker = QuizMaker();
//   int questionNumber = 0;

//   bool isAbsorbing = false;

//   final int duration = 20;

//   List<Color> optionColor = [
//     Colors.white,
//     Colors.white,
//     Colors.white,
//     Colors.white
//   ];

//   List<Widget> buildOptions(int i) {
//     List<String> options = quizMaker.getOptions(i);

//     List<Widget> Options = [];

//     for (int j = 0; j < 4; j++) {
//       Options.add(OptionWidget(
//         widget: widget,
//         option: options[j],
//         optionColor: optionColor[j],
//         onTap: () async {
//           if (quizMaker.isCorrect(i, j)) {
//             setState(() {
//               optionColor[j] = Colors.green;
//               isAbsorbing = true;
//             });
//             quizMaker.increaseScore();
//           } else {
//             setState(() {
//               optionColor[j] = Colors.red;
//               optionColor[quizMaker.getCorrectIndex(i)] = Colors.green;
//               isAbsorbing = true;
//             });
//           }
//           await Future.delayed(
//               const Duration(seconds: 1, milliseconds: 30), () {});
//           if (questionNumber < 9) {
//             setState(() {
//               optionColor[j] = Colors.white;
//               optionColor[quizMaker.getCorrectIndex(i)] = Colors.white;
//               questionNumber++;
//               isAbsorbing = false;
//             });
//           } else {
//             Navigator.pop(context);
//             Navigator.pop(context);
//           }
//         },
//       ));
//     }
//     return Options;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               color: const Color(0xff7c94b6),
//               image: const DecorationImage(
//                 image: AssetImage('images/backgroud.jpg'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(top: 40),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Row(
//                       children: [
//                         Container(
//                           child: Row(children: [
//                             Padding(
//                               padding: const EdgeInsets.only(right: 20),
//                               child: Image(
//                                 image: AssetImage('images/brain.png'),
//                                 height: 30,
//                                 width: 30,
//                               ),
//                             ),
//                             Text(
//                               ('3200'),
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ]),
//                           height: 40,
//                           decoration: BoxDecoration(
//                               color: Colors.yellow.shade800,
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(20)),
//                               border: Border.all(color: Colors.white)),
//                         )
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(1),
//                           child: Image(
//                             image: AssetImage('images/heart.png'),
//                             height: 20,
//                             width: 20,
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(1),
//                           child: Image(
//                             image: AssetImage('images/heart.png'),
//                             height: 20,
//                             width: 20,
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(1),
//                           child: Image(
//                             image: AssetImage('images/heart.png'),
//                             height: 20,
//                             width: 20,
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(1),
//                           child: Image(
//                             image: AssetImage('images/timused.png'),
//                             height: 20,
//                             width: 20,
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(3),
//                           child: Image(
//                             image: AssetImage('images/timused.png'),
//                             height: 20,
//                             width: 20,
//                           ),
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 20, top: 30),
//                 child: Row(
//                   children: [
//                     TextButton(
//                       onPressed: () {},
//                       child: Image(
//                         height: 50,
//                         width: 50,
//                         image: AssetImage('images/5050.png'),
//                       ),
//                     ),
//                     TextButton(
//                       onPressed: () {},
//                       child: Image(
//                         height: 50,
//                         width: 50,
//                         image: AssetImage('images/call.png'),
//                       ),
//                     ),
//                     TextButton(
//                       onPressed: () {},
//                       child: Image(
//                         height: 50,
//                         width: 50,
//                         image: AssetImage('images/hoikhangia.png'),
//                       ),
//                     ),
//                     Container(
//                       child: TextButton(
//                         onPressed: () {},
//                         child: Image(
//                           height: 30,
//                           width: 30,
//                           image: AssetImage('images/reset.png'),
//                         ),
//                       ),
//                       decoration: BoxDecoration(
//                           color: Color.fromARGB(255, 255, 255, 255),
//                           borderRadius: BorderRadius.all(Radius.circular(40)),
//                           border: Border.all(color: Colors.white)),
//                     ),
//                     TextButton(
//                       onPressed: () {},
//                       child: Image(
//                         height: 50,
//                         width: 50,
//                         image: AssetImage('images/5050.png'),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }

// class OptionWidget extends StatelessWidget {
//   const OptionWidget(
//       {Key? key,
//       required this.widget,
//       required this.option,
//       required this.onTap,
//       required this.optionColor})
//       : super(key: key);

//   final QuestionScreen widget;
//   final String option;
//   final VoidCallback onTap;
//   final Color optionColor;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
//         alignment: Alignment.center,
//         height: 50,
//         width: MediaQuery.of(context).size.width,
//         decoration: BoxDecoration(
//           color: optionColor,
//           borderRadius: BorderRadius.circular(10),
//           boxShadow: [
//             BoxShadow(
//               offset: const Offset(1, 3),
//               blurRadius: 3,
//               color: Colors.black.withOpacity(0.3),
//             ),
//           ],
//         ),
//         child: Text(
//           option,
//           style: TextStyle(
//             fontSize: 16,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
// }
