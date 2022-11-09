import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xff7c94b6),
            image: const DecorationImage(
              image: AssetImage('images/backgroud.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              margin: EdgeInsets.all(20),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Column(
                        children: [
                          history('25/10/2022 8:00 PM', '10', '3000'),
                          history('25/10/2022 8:00 PM', '10', '3000'),
                          history('25/10/2022 8:00 PM', '10', '3000'),
                          history('25/10/2022 8:00 PM', '10', '3000'),
                          history('25/10/2022 8:00 PM', '10', '3000'),
                          history('25/10/2022 8:00 PM', '10', '3000'),
                          history('25/10/2022 8:00 PM', '10', '3000'),
                          history('25/10/2022 8:00 PM', '10', '3000'),
                          history('25/10/2022 8:00 PM', '10', '3000'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  history(String time, String numberanswers, String point) {
    return TextButton(
      onPressed: () {},
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
                color: Colors.white, width: 2.0, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(112, 204, 197, 196)),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5.0),
              child: Column(
                children: [
                  Text(
                    time,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Text(
                      'Số câu: ' + numberanswers,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: Text(
                point + ' Điểm',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
