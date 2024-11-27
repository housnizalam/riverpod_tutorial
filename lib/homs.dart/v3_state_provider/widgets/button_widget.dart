import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/globals/arrows_buttons.dart';
import 'package:riverpod_tutorial/homs.dart/v3_state_provider/logic.dart';

class ButtonWidgetStateProvider extends ConsumerWidget {
  const ButtonWidgetStateProvider({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(alterStateProvider, (previos, actuell) {
      if (actuell.isNegative) print('alter darf nicht negativ sein');
    });
    return ArrowButtons.vertical(
      height: 40,
      width: 40,
      onPressedUp: () {
        // ref.read(alterStateProvider.notifier).state++;
        ref.read(alterStateProvider.notifier).update((value) => value + 1);
      },
      onPressedDown: () {
        ref.read(alterStateProvider.notifier).state--;
      },
      onLongPressedUp: () {
        ref.read(alterStateProvider.notifier).state += 10;
      },
      onLongPressedDown: () {
        ref.read(alterStateProvider.notifier).state -= 10;
      },
    );
  }
}


