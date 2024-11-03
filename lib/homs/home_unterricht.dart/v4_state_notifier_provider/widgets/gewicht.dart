import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/generals/arrows_buttons.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v4_state_notifier_provider/logic.dart';

class GewichtStaateNotifierUntericht extends ConsumerWidget {
  const GewichtStaateNotifierUntericht({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Expanded(flex: 3,
          child: FittedBox(
            child: Text(
              'Gewicht: ${ref.watch(bmiStateNotifierProvider).gewicht}',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        Expanded(
          child: ArrowButtons.vertical(
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
        ),
    
      ],
    );
  }
}
