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
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                  image: AssetImage('images/left.png'),
                  width: 35,
                  height: 35,
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Bang Xep Hang',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          Padding(
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
                          'Tat Ca',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Linh Vuc',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Level',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [],
          )
        ]),
      ),
    );
  }
}
