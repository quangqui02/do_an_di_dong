import 'package:doan_didong/question_screen/level.dart';
import 'package:flutter/material.dart';
import 'ListCard.dart';
import 'ListDetail.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Container(
          margin:
              const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Level()),
                          );
                        },
                        child: Image(
                          width: 30,
                          height: 30,
                          image: AssetImage('images/left.png'),
                        )),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey)),
                  ),
                  Container(
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey)),
                    child: const Icon(
                      Icons.settings,
                      color: Colors.lightBlueAccent,
                      size: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                'Chọn lĩnh vực',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  color: Color(0xfff85e7d),
                ),
              ),
              const SizedBox(height: 5),
              ListView.builder(
                itemCount: cardDetailList.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListCard(index);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
