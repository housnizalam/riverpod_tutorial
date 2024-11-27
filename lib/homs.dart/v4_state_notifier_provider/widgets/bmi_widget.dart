import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/homs.dart/v4_state_notifier_provider/logic.dart';

class BmiWidget extends ConsumerWidget {
  const BmiWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Card(
        color: ref.watch(bmiStateNotifierProvider).bmiColor,
        child: SizedBox(
          height: 160,
          width: 160,
          child: Center(
              child: Text(
            ref.watch(bmiStateNotifierProvider).bmi.toStringAsFixed(2),
            style: const TextStyle(fontSize: 40),
          )),
        ),
      ),
    );
  }
}
