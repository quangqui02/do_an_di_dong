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
              padding: const EdgeInsets.only(top: 30, bottom: 10),
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
                      width: 30,
                      height: 30,
                    ),
                  )
                ],
              ),
            ),
            Text(
              'BẢNG XẾP HẠNG',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            toolbar(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                child: ListView(
                  children: <Widget>[
                    rank('1', 'Name', '3000'),
                    rank('1', 'Name', '3000'),
                    rank('1', 'Name', '3000'),
                    rank('1', 'Name', '3000'),
                    rank('1', 'Name', '3000'),
                    rank('1', 'Name', '3000'),
                    rank('1', 'Name', '3000'),
                    rank('1', 'Name', '3000'),
                    rank('1', 'Name', '3000'),
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
            height: 40,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              color: Color(0xff7c94b6),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.white),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Tất cả',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Lĩnh Vực',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
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
                      fontSize: 17,
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
          color: Color.fromARGB(151, 128, 138, 145),
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
                width: 40,
                height: 40,
                image: AssetImage('images/user.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  name,
                  //overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          subtitle: null,
          trailing: Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: Text(
              point,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
