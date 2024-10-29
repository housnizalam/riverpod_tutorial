import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/generals/arrows_buttons.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v4/logic/good_practice.dart';

class GewichtNotifierUntericht extends ConsumerWidget {
  const GewichtNotifierUntericht({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Text(
          'Gewicht: ${ref.watch(bmiStateNotifierProvider).gewicht}',
          style: TextStyle(fontSize: 30),
        ),
        ArrowButtons.vertical(
          height: 40,
          width: 40,
          onPressedUp: () {
            ref.read(bmiStateNotifierProvider.notifier).upgradeGewicht(1);
          },
          onPressedDown: () {
            ref.read(bmiStateNotifierProvider.notifier).upgradeGewicht(-1);
          },
          onLongPressedUp: () {
            ref.read(bmiStateNotifierProvider.notifier).upgradeGewicht(10);
          },
          onLongPressedDown: () {
            ref.read(bmiStateNotifierProvider.notifier).upgradeGewicht(-10);
          },
        ),
        SizedBox(
          width: 60,
        ),
      ],
    );
  }
}
