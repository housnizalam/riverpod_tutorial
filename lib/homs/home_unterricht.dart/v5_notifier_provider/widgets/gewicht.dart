import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/generals/arrows_buttons.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v5_notifier_provider/logic.dart';

class GewichtUnterichtNotifier extends ConsumerWidget {
  const GewichtUnterichtNotifier({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Expanded(flex: 3,
          child: FittedBox(
            child: Text(
              'Gewicht: ${ref.watch(bmiNotifier).gewicht}',
            ),
          ),
        ),
        Expanded(
          child: ArrowButtons.vertical(
            height: 40,
            width: 40,
            onPressedUp: () {
              ref.read(bmiNotifier.notifier).upgradeGewicht(1);
            },
            onPressedDown: () {
              ref.read(bmiNotifier.notifier).upgradeGewicht(-1);
            },
            onLongPressedUp: () {
              ref.read(bmiNotifier.notifier).upgradeGewicht(10);
            },
            onLongPressedDown: () {
              ref.read(bmiNotifier.notifier).upgradeGewicht(-10);
            },
          ),
        ),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
