
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home/home.dart';

class Ranker extends StatefulWidget {
  const Ranker({super.key});

  @override
  State<Ranker> createState() => _RankerState();
}

class _RankerState extends State<Ranker> {
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
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => Home(),
                        ),
                      );
                    },
                    child: Image(
                      image: AssetImage('images/back.png'),
                      width: 35,
                      height: 35,
                    ),
                  )
                ],
              ),
            ),
            Center(
              child: Text(
                'BẢNG XẾP HẠNG',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
            toolbar(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                child: ListView(
                  children: <Widget>[
                    rank('1', 'Thành Thành Thành Thành Thành', '3000'),
                    rank('1', 'Thành', '3000'),
                    rank('1', 'Thành', '3000'),
                    rank('1', 'Thành', '3000'),
                    rank('1', 'Thành', '3000'),
                    rank('1', 'Thành', '3000'),
                    rank('1', 'Thành', '3000'),
                    rank('1', 'Thành', '3000'),
                    rank('1', 'Thành', '3000'),
                    rank('1', 'Thành', '300'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget toolbar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 270,
            height: 40,
            decoration: BoxDecoration(
              color: Color(0xff7c94b6),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.white),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Tất cả',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      'Lĩnh Vực',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Cấp độ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget rank(String number, String name, String point) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
              color: Colors.white, width: 2.0, style: BorderStyle.solid),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: ListTile(
          leading: Text(
            number,
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                width: 30,
                height: 30,
                image: AssetImage('images/brain.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Container(
                  width: 180,
                  child: Text(
                    name,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          subtitle: null,
          trailing: Text(
            point,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
