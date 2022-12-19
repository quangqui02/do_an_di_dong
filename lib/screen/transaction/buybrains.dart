import 'package:doan_didong/models/buybrain/buybrain_object.dart';
import 'package:doan_didong/models/buybrain/buybrain_provider.dart';
import 'package:doan_didong/screen/transaction/transaction.dart';
import 'package:doan_didong/screen/transaction/transaction_history.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/user.dart';

class BuyBrains extends StatefulWidget {
  BuyBrains({Key? key, required this.user}) : super(key: key);
  User? user;
  @override
  State<BuyBrains> createState() => _BuyBrainsState();
}

class _BuyBrainsState extends State<BuyBrains> {
  int pointuser = 0;

  List<BuyBrainObject> lsBuyBrains = [];
  void loadDanhSach() async {
    final data = await BuyBrainProvider.getAllContacts();
    setState(() {});
    lsBuyBrains = data;
  }

  @override
  void initState() {
    super.initState();
    loadDanhSach();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: lsBuyBrains.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(151, 128, 138, 145),
                  border: Border.all(
                      color: Colors.white,
                      width: 2.0,
                      style: BorderStyle.solid),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Card(
                  child: ListTile(
                    tileColor: Color.fromARGB(151, 128, 138, 145),
                    leading: Image(
                      image: AssetImage('images/brain.png'),
                      height: 45,
                      width: 45,
                    ),
                    title: Text(
                      textAlign: TextAlign.left,
                      '${lsBuyBrains[index].brain}',
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                        letterSpacing: 1,
                      ),
                    ),
                    trailing: TextButton(
                      onPressed: () {
                        setState(() {
                          pointuser = this.widget.user!.point;
                          pointuser = pointuser + lsBuyBrains[index].price;
                          // this.widget.user!.point += pointuser;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 2.0,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${lsBuyBrains[index].price}',
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                letterSpacing: 0,
                              ),
                            ),
                            Text(
                              'đ',
                              style: const TextStyle(
                                fontSize: 15,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.black,
                                decorationThickness: 1,
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
