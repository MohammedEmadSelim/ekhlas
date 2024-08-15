import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: Color(0xfffdfcdc),
        actions: [
          InkWell(
            onTap: () {
              print('pressed');
              FirebaseFirestore.instance
                  .collection('products')
                  .add({"name": "ahmed"}).then((value) {
                    print('successfully added');
                  },);
            },
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xfffdfcdc),
                borderRadius: BorderRadius.all(Radius.circular(12)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400.withOpacity(0.5),
                    blurRadius: 6,
                    offset: Offset(2, 2),
                    spreadRadius: 1,
                  ),
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 6,
                    offset: Offset(-1, -1),
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Text('Uplaod Prices'),
            ),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      backgroundColor: Color(0xfffdfcdc),
      body: Center(
        child: Text('Main Page'),
      ),
    );
  }
}
