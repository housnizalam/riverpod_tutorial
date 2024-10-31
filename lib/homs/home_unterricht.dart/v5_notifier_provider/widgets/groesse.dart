import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/generals/arrows_buttons.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v5_notifier_provider/logic.dart';

class GroesseUnterrichtNotifier extends ConsumerWidget {
  const GroesseUnterrichtNotifier({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Text(
          'Größe: ${ref.watch(bmiNotifier).groesse}',
          style: TextStyle(fontSize: 30),
        ),
        ArrowButtons.vertical(
          height: 40,
          width: 40,
          onPressedUp: () {
            ref.read(bmiNotifier.notifier).upgradeGroesse(1);
          },
          onPressedDown: () {
            ref.read(bmiNotifier.notifier).upgradeGroesse(-1);
          },
          onLongPressedUp: () => ref.read(bmiNotifier.notifier).upgradeGroesse(10),
          onLongPressedDown: () => ref.read(bmiNotifier.notifier).upgradeGroesse(-10),
        ),
      ],
    );
  }
}
