import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp9/Pages/page1.dart';
import 'package:myapp9/Pages/page2.dart';
import 'package:myapp9/Pages/page3.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  var _countIndex= 0;
  final pages=[
    page1(),page2(),page3(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: pages[
            _countIndex
          ],
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: _countIndex,
              onTap: (index){
                setState(() {
                  _countIndex= index;
                });
              },
              items: [
            BottomNavigationBarItem(icon: Icon(Icons.account_circle),title: Text("Home")),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle),title: Text("People")),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle),title: Text("Setting")),
          ]),
    ));
  }
}
