import 'package:doan_didong/screen/question_screen/question.dart';
import 'package:flutter/material.dart';

import '../../models/user.dart';
import 'ListDetail.dart';

class ListCard extends StatefulWidget {
  ListCard(this.index);
  User? user;
  final int index;

  @override
  State<ListCard> createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => QuestionScreen(
                      user: this.widget.user,
                    )),
          );
        },
        child: Stack(
          alignment: AlignmentDirectional.topEnd,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: cardDetailList[widget.index].gradients,
                ),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(1, 3),
                    blurRadius: 7,
                    spreadRadius: 5,
                    color: cardDetailList[widget.index].shadowColor,
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cardDetailList[widget.index].title,
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            Hero(
              tag: cardDetailList[widget.index].iconTag,
              child: Image.asset(
                cardDetailList[widget.index].iconAssetName,
                width: 180,
                height: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
