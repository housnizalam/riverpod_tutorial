import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/arrows_buttons.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v2.dart/logisch.dart';

class ButtonWidgetProvider extends ConsumerWidget {
  const ButtonWidgetProvider({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ArrowButtons.vertical(
      height: 40,
      width: 40,
      onPressedUp: () {
        // ref.read(alterProvider)++;
      },
      onPressedDown: () {
        // ref.read(alterProvider)--;
      },
    );
  }
}
