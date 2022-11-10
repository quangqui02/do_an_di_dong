import 'package:flutter/cupertino.dart';
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
      body: Container(
        decoration: BoxDecoration(
          color: const Color(0xff7c94b6),
          image: const DecorationImage(
            image: AssetImage('images/backgroud.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(builder: (context) => History()),
                        );
                      },
                      child: Image(
                        width: 30,
                        height: 30,
                        image: AssetImage('images/left.png'),
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 40,
                bottom: 10,
              ),
              child: Text(
                'LỊCH SỬ CHƠI',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  history('25/10/2022 8:00 PM', '10', '3000'),
                  history('25/10/2022 8:00 PM', '10', '3000'),
                  history('25/10/2022 8:00 PM', '10', '3000'),
                  history('25/10/2022 8:00 PM', '10', '3000'),
                ],
              ),
            )
          ],
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
              height: 60,
              width: 150,
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
              padding: const EdgeInsets.all(5),
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
