import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/globals/arrows_buttons.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v6_future_provider/logic/bmi_provider.dart';

class AddGrosse extends ConsumerWidget {
  const AddGrosse({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
        child: Row(
      children: [
        Expanded(
          flex: 2,
          child: FittedBox(
            child: Text(
              'Größe: ${ref.watch(bmiProviderFutureUnterricht).groesse}',
            ),
          ),
        ),
        Expanded(
          child: ArrowButtons.vertical(
            height: 33,
            width: 33,
            onPressedUp: () {
              ref.read(bmiProviderFutureUnterricht.notifier).changeGroesse(1);
            },
            onPressedDown: () {
              ref.read(bmiProviderFutureUnterricht.notifier).changeGroesse(-1);
            },
            onLongPressedUp: () {
              ref.read(bmiProviderFutureUnterricht.notifier).changeGroesse(10);
            },
            onLongPressedDown: () {
              ref.read(bmiProviderFutureUnterricht.notifier).changeGroesse(-10);
            },
          ),
        ),
      ],
    ));
  }
}
