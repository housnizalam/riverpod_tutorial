import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v5_notifier_provider/logic.dart';

class BmiWidgetChangeNotifier extends ConsumerWidget {
  const BmiWidgetChangeNotifier({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Card(
        color: ref.watch(bmiNotifier).bmiColor,
        child: SizedBox(
          height: 160,
          width: 160,
          child: Center(
              child: Text(
            ref.watch(bmiNotifier).bmi.toStringAsFixed(2),
            style: TextStyle(fontSize: 40),
          )),
        ),
      ),
    );
  }
}
