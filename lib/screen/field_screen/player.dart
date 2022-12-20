import 'package:doan_didong/screen/home/home.dart';
import 'package:doan_didong/screen/home/hometab.dart';
import 'package:doan_didong/screen/question_screen/level.dart';
import 'package:flutter/material.dart';
import '../../models/user.dart';
import 'ListCard.dart';
import 'ListDetail.dart';

class FeildQuestion extends StatefulWidget {
  FeildQuestion({Key? key, required this.user}) : super(key: key);
  User user;
  @override
  State<FeildQuestion> createState() => _FeildQuestionState();
}

class _FeildQuestionState extends State<FeildQuestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Stack(
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
                SingleChildScrollView(
                  physics: const ScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      Center(
                        child: Text(
                          'CHỌN LĨNH VỰC',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: ListView.builder(
                          itemCount: cardDetailList.length,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return ListCard(
                                user: this.widget.user, index: index);
                          },
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
    );
  }
}
