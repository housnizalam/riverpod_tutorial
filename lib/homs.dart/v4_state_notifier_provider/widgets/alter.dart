import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/globals/arrows_buttons.dart';
import 'package:riverpod_tutorial/homs.dart/v4_state_notifier_provider/logic.dart';

class AlterWidget extends ConsumerWidget {
  const AlterWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('Alter Widget wird gebaut');
    final alter = ref.watch(alterStateNotifierProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 3,
          child: FittedBox(
            child: Text(
              'Alter: $alter',
              style: const TextStyle(fontSize: 30),
            ),
          ),
        ),
        Expanded(
          child: ArrowButtons.vertical(
            height: 40,
            width: 40,
            onPressedUp: () {
              ref.read(alterStateNotifierProvider.notifier).increment();
            },
            onPressedDown: () {
              ref.read(alterStateNotifierProvider.notifier).decrement();
            },
            onLongPressedUp: () {
              ref.read(alterStateNotifierProvider.notifier).upgradeAlter(10);
            },
            onLongPressedDown: () {
              ref.read(alterStateNotifierProvider.notifier).upgradeAlter(-10);
            },
          ),
        ),
      ],
    );
  }
}
