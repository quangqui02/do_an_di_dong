import 'package:auto_size_text/auto_size_text.dart';
import 'package:doan_didong/screen/home/home.dart';
import 'package:doan_didong/screen/home/hometab.dart';
import 'package:doan_didong/screen/question_screen/level.dart';
import 'package:doan_didong/screen/question_screen/question.dart';
import 'package:flutter/material.dart';
import '../../models/user.dart';
import 'ListCard.dart';
import 'ListDetail.dart';
import 'package:doan_didong/models/feild_question/feild_question_object.dart';
import 'package:doan_didong/models/feild_question/feild_question_provider.dart';

class FeildQuestion extends StatefulWidget {
  FeildQuestion({Key? key, required this.user}) : super(key: key);
  User user;
  @override
  State<FeildQuestion> createState() => _FeildQuestionState();
}

class _FeildQuestionState extends State<FeildQuestion> {
  List<FeildQuestionObjecj> lsProducts = [];
  void _LoadDanhSach() async {
    final data = await FeildProvider.fetchPackage();
    setState(() {});
    lsProducts = data;
  }

  @override
  void initState() {
    super.initState();
    _LoadDanhSach();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xff7c94b6),
              image: const DecorationImage(
                image: AssetImage('images/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomeTab(
                                  user: this.widget.user,
                                )),
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
          Positioned(
              child: Container(
            height: MediaQuery.of(context).size.height * 0.9,
            width: MediaQuery.of(context).size.width,
            child: Container(
              padding: EdgeInsets.only(left: 30, right: 20, top: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Text(
                          'CHỌN LĨNH VỰC',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Expanded(
                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                        height: 30,
                      ),
                      itemCount: lsProducts.length,
                      itemBuilder: (context, index) {
                        if (lsProducts.length > 0) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => QuestionScreen(
                                    category: lsProducts[index].id,
                                    user: this.widget.user,
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.all(20),
                              height: 90,
                              margin: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset: Offset(0, 1),
                                    ),
                                  ],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Color.fromARGB(255, 0, 89, 255),
                                        Color.fromARGB(255, 0, 255, 21),
                                      ])),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    AutoSizeText(
                                      lsProducts[index].namefield,
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Image(
                                      image: AssetImage('images/logoapp.png'),
                                      height: 100,
                                      width: 100,
                                    ),
                                  ]),
                            ),
                          );
                        } else {
                          return Center(
                            child: Text('Error'),
                          );
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
          )),
        ]),
      ),
    );
  }
}
