import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/globals/arrows_buttons.dart';
import 'package:riverpod_tutorial/homs.dart/v5_notifier_provider/logic.dart';

class AlterWidget extends ConsumerWidget {
  const AlterWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final alter = ref.watch(alterNotifierProvider);
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
              ref.read(alterNotifierProvider.notifier).upgradeAlter(1);
            },
            onPressedDown: () {
              ref.read(alterNotifierProvider.notifier).upgradeAlter(-1);
            },
            onLongPressedUp: () {
              ref.read(alterNotifierProvider.notifier).upgradeAlter(10);
            },
            onLongPressedDown: () {
              ref.read(alterNotifierProvider.notifier).upgradeAlter(-10);
            },
          ),
        ),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
