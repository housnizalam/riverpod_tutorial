import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/generals/arrows_buttons.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v5_notifier_provider/logic.dart';

class AlterWidgetNotifier extends ConsumerWidget {
  const AlterWidgetNotifier({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final alter = ref.watch(alterNotifier);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Alter: $alter',
          style: const TextStyle(fontSize: 30),
        ),
        ArrowButtons.vertical(
          height: 40,
          width: 40,
          onPressedUp: () {
            ref.read(alterNotifier.notifier).upgradeAlter(1);
          },
          onPressedDown: () {
            ref.read(alterNotifier.notifier).upgradeAlter(-1);
          },
          onLongPressedUp: () {
            ref.read(alterNotifier.notifier).upgradeAlter(10);
          },
          onLongPressedDown: () {
            ref.read(alterNotifier.notifier).upgradeAlter(-10);
          },
        ),
        const SizedBox(
          width: 60,
        ),
      ],
    );
  }
}
