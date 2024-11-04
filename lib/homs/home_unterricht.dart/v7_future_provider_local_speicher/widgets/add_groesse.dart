import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/generals/arrows_buttons.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v7_future_provider_local_speicher/logic/future_provider.dart';

class AddGrosseLokalSpeicher extends ConsumerWidget {
  const AddGrosseLokalSpeicher({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
        child: Row(
      children: [
        Expanded(
          flex: 2,
          child: FittedBox(
            child: Text(
              'Größe: ${ref.watch(bmiProviderLokalSpeicher).groesse}',
            ),
          ),
        ),
        Expanded(
          child: ArrowButtons.vertical(
            height: 33,
            width: 33,
            onPressedUp: () {
              ref.read(bmiProviderLokalSpeicher.notifier).changeGroesse(1);
            },
            onPressedDown: () {
              ref.read(bmiProviderLokalSpeicher.notifier).changeGroesse(-1);
            },
            onLongPressedUp: () {
              ref.read(bmiProviderLokalSpeicher.notifier).changeGroesse(10);
            },
            onLongPressedDown: () {
              ref.read(bmiProviderLokalSpeicher.notifier).changeGroesse(-10);
            },
          ),
        ),
      ],
    ));
  }
}
