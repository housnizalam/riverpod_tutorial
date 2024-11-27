import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/globals/arrows_buttons.dart';
import 'package:riverpod_tutorial/homs.dart/v12_stream_with_api/logic/stream_provider.dart';

class AddDatumWidget extends ConsumerWidget {
  const AddDatumWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    DateTime datum = ref.watch(bmiProviderLokalSpeicher).datum;
    return Card(
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: FittedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Datum: ${datum.day}/${datum.month}/${datum.year}'),
              ),
            ),
          ),
          ArrowButtons.vertical(
            width: 27,
            height: 27,
            onPressedUp: () {
              ref.read(bmiProviderLokalSpeicher.notifier).changeDatum(datum.add(const Duration(days: 1)));
            },
            onPressedDown: () {
              ref.read(bmiProviderLokalSpeicher.notifier).changeDatum(datum.subtract(const Duration(days: 1)));
            },
            onLongPressedUp: () {
              ref.read(bmiProviderLokalSpeicher.notifier).changeDatum(datum.add(const Duration(days: 10)));
            },
            onLongPressedDown: () {
              ref.read(bmiProviderLokalSpeicher.notifier).changeDatum(datum.subtract(const Duration(days: 10)));
            },
          ),
          ArrowButtons.vertical(
            width: 27,
            height: 27,
            onPressedUp: () {
              ref.read(bmiProviderLokalSpeicher.notifier).changeDatum(DateTime(datum.year, datum.month + 1, datum.day));
            },
            onPressedDown: () {
              ref.read(bmiProviderLokalSpeicher.notifier).changeDatum(DateTime(datum.year, datum.month - 1, datum.day));
            },
            onLongPressedUp: () {
              ref
                  .read(bmiProviderLokalSpeicher.notifier)
                  .changeDatum(DateTime(datum.year, datum.month + 10, datum.day));
            },
            onLongPressedDown: () {
              ref
                  .read(bmiProviderLokalSpeicher.notifier)
                  .changeDatum(DateTime(datum.year, datum.month - 10, datum.day));
            },
          ),
          ArrowButtons.vertical(
            width: 27,
            height: 27,
            onPressedUp: () {
              ref.read(bmiProviderLokalSpeicher.notifier).changeDatum(DateTime(datum.year + 1, datum.month, datum.day));
            },
            onPressedDown: () {
              ref.read(bmiProviderLokalSpeicher.notifier).changeDatum(DateTime(datum.year - 1, datum.month, datum.day));
            },
            onLongPressedUp: () {
              ref
                  .read(bmiProviderLokalSpeicher.notifier)
                  .changeDatum(DateTime(datum.year + 10, datum.month, datum.day));
            },
            onLongPressedDown: () {
              ref
                  .read(bmiProviderLokalSpeicher.notifier)
                  .changeDatum(DateTime(datum.year - 10, datum.month, datum.day));
            },
          ),
        ],
      ),
    );
  }
}
