import 'package:flutter/material.dart';

class AlterText extends StatelessWidget {
  const AlterText({Key? key, required this.alter}) : super(key: key);
   final int alter;
  @override
  Widget build(BuildContext context) {
    return  Text(
            'Alter: $alter',
            style: TextStyle(fontSize: 40),
          );
  }
}