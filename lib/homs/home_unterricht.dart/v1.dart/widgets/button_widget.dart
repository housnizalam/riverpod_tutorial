import 'package:flutter/material.dart';
import 'package:riverpod_tutorial/arrows_buttons.dart';

class ButtonWidget extends StatefulWidget {
   ButtonWidget({super.key,required this.alter});
   int alter;
  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return ArrowButtons.vertical(
      height: 40,
      width: 40,
      onPressedUp: () {
        setState(() {
          widget.alter++;
        });
      },
      onPressedDown: () {
        setState(() {
          widget.alter--;
        });
      },
    );
  }
}