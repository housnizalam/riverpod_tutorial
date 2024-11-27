import 'package:flutter/material.dart';
import 'package:riverpod_tutorial/homs.dart/v1_statefull_widget/widgets/alter_text.dart';
import 'package:riverpod_tutorial/homs.dart/v1_statefull_widget/widgets/button_widget.dart';

class StatefullHome extends StatefulWidget {
  const StatefullHome({super.key});

  @override
  State<StatefullHome> createState() => _StatefullHomeState();
}

class _StatefullHomeState extends State<StatefullHome> {
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
