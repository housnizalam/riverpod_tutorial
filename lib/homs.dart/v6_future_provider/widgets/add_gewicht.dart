import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/globals/arrows_buttons.dart';
import 'package:riverpod_tutorial/homs.dart/v6_future_provider/logic/bmi_provider.dart';

class AddGewicht extends ConsumerWidget {
  const AddGewicht({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
        child: Row(
      children: [
        Expanded(
          flex: 2,
          child: FittedBox(
            child: Text(
              'Gewicht: ${ref.watch(bmiProviderFutureUnterricht).gewicht}',
            ),
          ),
        ),
        Expanded(
          child: ArrowButtons.vertical(
            height: 33,
            width: 33,
            onPressedUp: () {
              ref.read(bmiProviderFutureUnterricht.notifier).changeGewicht(1);
            },
            onPressedDown: () {
              ref.read(bmiProviderFutureUnterricht.notifier).changeGewicht(-1);
            },
            onLongPressedUp: () {
              ref.read(bmiProviderFutureUnterricht.notifier).changeGewicht(10);
            },
            onLongPressedDown: () {
              ref.read(bmiProviderFutureUnterricht.notifier).changeGewicht(-10);
            },
          ),
        ),
      ],
    ));
  }
}
