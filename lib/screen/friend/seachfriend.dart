import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SeachFriend extends StatefulWidget {
  const SeachFriend({super.key});

  @override
  State<SeachFriend> createState() => _SeachFriendState();
}

class _SeachFriendState extends State<SeachFriend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: null,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(151, 128, 138, 145),
        title: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Nhập tên người chơi',
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                ),
                onChanged: (value) => setState(() {}),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
