import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v4_state_notifier_provider/logic.dart';

class GeschlechtWidgetStateNotifier extends ConsumerWidget {
  const GeschlechtWidgetStateNotifier({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('Gschlecht Widget wird gebaut');
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: FittedBox(
            child: Text(
              ref.watch(bmiStateNotifierProvider.select(
                (value) => value.geschlecht,
              )),
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
                    ref.read(bmiStateNotifierProvider.notifier).upgradeGeschlecht('Mänlich');
                  },
                  child: const Text('M'),
                ),
                TextButton(
                  onPressed: () {
                    ref.read(bmiStateNotifierProvider.notifier).upgradeGeschlecht('Weiblich');
                  },
                  child: const Text('F'),
                ),
                TextButton(
                  onPressed: () {
                    ref.read(bmiStateNotifierProvider.notifier).upgradeGeschlecht('Anders');
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
