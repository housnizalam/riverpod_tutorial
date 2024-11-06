import 'package:flutter/material.dart';
import 'package:riverpod_tutorial/globals/arrows_buttons.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v1_statefull_widget/widgets/alter_text.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v1_statefull_widget/widgets/button_widget.dart';

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
         AlterText(alter: alter),
          SizedBox(
            width: 40,
          ),
          ButtonWidget(alter: alter,)
        ],
      ),
    ));
  }
}
