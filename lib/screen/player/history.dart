import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/history/history_obj.dart';
import '../../models/history/history_provider.dart';

class HistoryScreen extends StatefulWidget {
  String id_user;
  HistoryScreen({Key? key, required this.id_user}) : super(key: key);
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<HistoryScreen> {
  List<History> lsHistory = [];
  void _LoadDanhSach() async {
    final data = await HistoryProvider.getUserHistory(this.widget.id_user);
    setState(() {});
    lsHistory = data.cast<History>();
  }

  @override
  void initState() {
    super.initState();
    _LoadDanhSach();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(151, 128, 138, 145),
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
                          MaterialPageRoute(
                              builder: (context) => HistoryScreen(
                                    id_user: '',
                                  )),
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
            Center(
              child: Text(
                'LỊCH SỬ CHƠI',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(right: 5.0, left: 5.0),
              child: ListView.builder(
                  itemCount: lsHistory.length,
                  itemBuilder: (context, index) {
                    return history(lsHistory[index]);
                  }),
            )),
          ],
        ),
      ),
    );
  }

  history(History his) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.white, width: 1.5, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(151, 128, 138, 145),
      ),
      child: ListTile(
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                his.time_start,
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            his.totalscore + ' Điểm',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 23,
            ),
            textAlign: TextAlign.right,
          ),
        ),
      ),
    );
  }
}
