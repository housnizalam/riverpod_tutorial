import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/globals/arrows_buttons.dart';
import 'package:riverpod_tutorial/homs.dart/v10_family_as_filter/logic/bmi_provider.dart';
import 'package:riverpod_tutorial/homs.dart/v10_family_as_filter/logic/datum_providers.dart';

class DatumWidget extends ConsumerWidget {
  const DatumWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 20),
          child: Row(
            children: [
              Text(
                'Datum: ${ref.watch(datumFilterProvider).day}/${ref.watch(datumFilterProvider).month}/${ref.watch(datumFilterProvider).year}',
                style: const TextStyle(fontSize: 20),
              ),
              ArrowButtons.vertical(
                height: 40,
                width: 30,
                onPressedUp: () => ref.read(dayProvider.notifier).state++,
                onPressedDown: () => ref.read(dayProvider.notifier).state--,
              ),
              ArrowButtons.vertical(
                height: 40,
                width: 30,
                onPressedUp: () => ref.read(monthProvider.notifier).state++,
                onPressedDown: () => ref.read(monthProvider.notifier).state--,
              ),
              ArrowButtons.vertical(
                height: 40,
                width: 30,
                onPressedUp: () {
                  ref.read(yearProvider.notifier).state++;
                },
                onPressedDown: () => ref.read(yearProvider.notifier).state--,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 20),
          child: Row(
            children: [
              Text('BMI: ${ref.watch(bmiFilterProvider)}                ', style: const TextStyle(fontSize: 20)),
              ArrowButtons.vertical(
                height: 40,
                width: 30,
                onPressedUp: () => ref.read(bmiFilterProvider.notifier).state++,
                onPressedDown: () => ref.read(bmiFilterProvider.notifier).state--,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
