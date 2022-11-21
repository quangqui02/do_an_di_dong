import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tracsaction extends StatefulWidget {
  const Tracsaction({super.key});

  @override
  State<Tracsaction> createState() => _TracsactionState();
}

class _TracsactionState extends State<Tracsaction> {
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
                        MaterialPageRoute(builder: (context) => Tracsaction()),
                      );
                    },
                    child: Image(
                      width: 30,
                      height: 30,
                      image: AssetImage('images/back.png'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

int _value = 0;

_nhamang(String image) {
  return Column(
    children: [
      Row(
        children: [
          // GestureDetector(
          //    onTap: () {=> setState(() => _value = 0)},
          //   child: Container(
          //     height: 56,
          //     width: 56,
          //     color: _value == 0 ? Colors.grey : Colors.transparent,
          //     child: Icon(Icons.call),
          //   ),
          //  )
        ],
      )
    ],
  );
}
