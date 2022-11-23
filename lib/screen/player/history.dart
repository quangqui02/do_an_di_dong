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
            image: AssetImage('images/background.png'),
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
                        image: AssetImage('images/back.png'),
                      )),
                ],
              ),
            ),
            Text(
              'LỊCH SỬ CHƠI',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                child: ListView(
                  children: <Widget>[
                    history('25/10/2022 8:00 PM', '10', '3000'),
                    history('25/10/2022 8:00 PM', '10', '300'),
                    history('25/10/2022 8:00 PM', '10', '3000'),
                    history('25/10/2022 8:00 PM', '10', '3000'),
                    history('25/10/2022 8:00 PM', '10', '32000'),
                    history('25/10/2022 8:00 PM', '10', '300'),
                    history('25/10/2022 8:00 PM', '10', '3000'),
                    history('25/10/2022 8:00 PM', '10', '3000'),
                  ],
                ),
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
              color: Colors.white, width: 1.5, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 53, 127, 193),
        ),
        child: ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                children: [
                  Text(
                    time,
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 15,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Text(
                      'Số câu: ' + numberanswers,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 17,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                point,
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 25,
                ),
              ),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                'Điểm',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 25,
                ),
              ),
            )),
      ),
    );
  }
}
