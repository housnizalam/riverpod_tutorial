import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/globals/arrows_buttons.dart';
import 'package:riverpod_tutorial/homs.dart/v12_stream_with_api/logic/stream_provider.dart';

class AddGewichtWidget extends ConsumerWidget {
  const AddGewichtWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
        child: Row(
      children: [
        Expanded(
          flex: 2,
          child: FittedBox(
            child: Text(
              'Gewicht: ${ref.watch(bmiProviderLokalSpeicher).gewicht}',
            ),
          ),
        ),
        Expanded(
          child: ArrowButtons.vertical(
            height: 33,
            width: 33,
            onPressedUp: () {
              ref.read(bmiProviderLokalSpeicher.notifier).changeGewicht(1);
            },
            onPressedDown: () {
              ref.read(bmiProviderLokalSpeicher.notifier).changeGewicht(-1);
            },
            onLongPressedUp: () {
              ref.read(bmiProviderLokalSpeicher.notifier).changeGewicht(10);
            },
            onLongPressedDown: () {
              ref.read(bmiProviderLokalSpeicher.notifier).changeGewicht(-10);
            },
          ),
        ),
      ],
    ));
  }
}
