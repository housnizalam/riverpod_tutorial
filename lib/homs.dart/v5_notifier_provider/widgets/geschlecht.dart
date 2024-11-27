import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/homs.dart/v5_notifier_provider/logic.dart';

class GeschlechtWidget extends ConsumerWidget {
  const GeschlechtWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: FittedBox(
            child: Text(
              ref.watch(bmiNotifier).geschlecht,
              style: const TextStyle(fontSize: 30),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    ref.read(bmiNotifier.notifier).upgradeGeschlecht('Mänlich');
                  },
                  child: const Text('M'),
                ),
                TextButton(
                  onPressed: () {
                    ref.read(bmiNotifier.notifier).upgradeGeschlecht('Weiblich');
                  },
                  child: const Text('F'),
                ),
                TextButton(
                  onPressed: () {
                    ref.read(bmiNotifier.notifier).upgradeGeschlecht('Anders');
                  },
                  child: const Text('A'),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
