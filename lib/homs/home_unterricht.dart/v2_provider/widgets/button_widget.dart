import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/globals/arrows_buttons.dart';

class ButtonWidgetProvider extends ConsumerWidget {
  const ButtonWidgetProvider({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ArrowButtons.vertical(
      height: 40,
      width: 40,
      onPressedUp: () {
        // ref.read(alterProvider.no);
      },
      onPressedDown: () {
        // ref.read(alterProvider)--;
      },
    );
  }
}
