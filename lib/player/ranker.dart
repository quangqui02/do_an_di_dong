// class Ranker extends StatefulWidget {
//   const Ranker({super.key});

//   @override
//   State<Ranker> createState() => _Ranker();
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                  Image(
                    image: AssetImage('images/back.png'),
                    width: 35,
                    height: 35,
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('BẢNG XẾP HẠNG',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      toolbar(),
                      rank('1', 'Trọng Nghĩa', '1000'),
                      rank('2', 'Phi Long', '700'),
                      rank('3', 'Công Thành', '300'),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  toolbar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 210,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.white),
            ),
            child: Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Tất cả',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Lĩnh Vực',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Cấp độ',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  rank(String number, String name, String point) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.white, width: 2.0, style: BorderStyle.solid),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: ListView(
        children: [
          Card(
            child: ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: Text(
                  number,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
              title: Column(
                children: [
                  Image(
                    width: 30,
                    height: 30,
                    image: AssetImage('images/user.png'),
                  ),
                  Container(
                    width: 160,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10, left: 10),
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
              trailing: Padding(
                padding: const EdgeInsets.only(right: 10, left: 50),
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
        ],
      ),
    );
  }
}
