import 'package:flutter/material.dart';
import 'package:riverpod_tutorial/arrows_buttons.dart';

class HomeStatefull extends StatefulWidget {
  const HomeStatefull({super.key});

  @override
  State<HomeStatefull> createState() => _HomeStatefullState();
}

class _HomeStatefullState extends State<HomeStatefull> {
  int alter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Alter: $alter',
            style: TextStyle(fontSize: 40),
          ),
          SizedBox(
            width: 40,
          ),
          ArrowButtons.vertical(
            height: 40,
            width: 40,
            onPressedUp: () {
              setState(() {
                alter++;
              });
            },
            onPressedDown: () {
              setState(() {
                alter--;
              });
            },
          ),
        ],
      ),
    ));
  }
}
