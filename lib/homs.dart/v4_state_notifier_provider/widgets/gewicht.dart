import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/globals/arrows_buttons.dart';
import 'package:riverpod_tutorial/homs.dart/v4_state_notifier_provider/logic.dart';

class GewichtWidget extends ConsumerWidget {
  const GewichtWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('Gewicht Widget wird gebaut');
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: FittedBox(
            child: Text(
              'Gewicht: ${ref.watch(bmiStateNotifierProvider.select(
                (value) => value.gewicht,
              ))}',
              style: const TextStyle(fontSize: 30),
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
