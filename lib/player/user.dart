import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Userr extends StatelessWidget {
  const Userr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final icon = CupertinoIcons.moon_stars;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(),
          elevation: 0,
          actions: [
            IconButton(
              icon: Icon(icon),
              onPressed: () {},
            ),
          ],
        ),
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xff7c94b6),
              image: const DecorationImage(
                image: AssetImage('images/backgroud.jpg'),
                fit: BoxFit.cover,
              ),
              // border: Border.all(
              //   width: 50,
              // ),
              // borderRadius: BorderRadius.circular(12),
            ),
          ),
          ListView(
            padding: EdgeInsets.all(10),
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(150),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 10,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage("images/user.png"),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    'Player',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 27,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Player@gmail.com',
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  buildButton(context, '2000', 'Thành tích'),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      '|',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                  buildButton(context, '20', 'Trò chơi'),
                ],
              ),
            ],
          ),
        ]),
      ),
    );
  }

  Widget buildButton(BuildContext context, String value, String text) =>
      MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 4),
        onPressed: () {},
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              value,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white),
            ),
            SizedBox(height: 2),
            Text(
              text,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
      );
}
