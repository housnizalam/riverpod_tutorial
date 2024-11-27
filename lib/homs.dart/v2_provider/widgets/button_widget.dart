import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/globals/arrows_buttons.dart';

class ButtonWidget extends ConsumerWidget {
  const ButtonWidget({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ArrowButtons.vertical(
      height: 100,
      width: 100,
      onPressedUp: () {
        // ref.read(alterProvider.no);
      },
      onPressedDown: () {
        // ref.read(alterProvider)--;
      },
    );
  }
}
