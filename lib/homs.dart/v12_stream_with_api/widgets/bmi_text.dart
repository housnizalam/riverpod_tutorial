import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/homs.dart/v12_stream_with_api/logic/stream_provider.dart';

class BmiWidget extends ConsumerWidget {
  const BmiWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Card(
        color: ref.watch(bmiProviderLokalSpeicher).bmiColor,
        child: SizedBox(
          height: 100,
          width: 200,
          child: FittedBox(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('BMI: ${ref.watch(bmiProviderLokalSpeicher).bmi.toStringAsFixed(2)}'),
            ),
          ),
        ),
      ),
    );
  }
}
