import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v4_state_notifier_provider/logic.dart';

class GeschlechtWidgetStateNotifier extends ConsumerWidget {
  const GeschlechtWidgetStateNotifier({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: FittedBox(
            child: Text(
              ref.watch(bmiStateNotifierProvider).geschlecht,
              style: TextStyle(fontSize: 30),
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
                    ref
                        .read(bmiStateNotifierProvider.notifier)
                        .upgradeGeschlecht('Mänlich');
                  },
                  child: Text('M'),
                ),
                TextButton(
                  onPressed: () {
                    ref
                        .read(bmiStateNotifierProvider.notifier)
                        .upgradeGeschlecht('Weiblich');
                  },
                  child: Text('F'),
                ),
                TextButton(
                  onPressed: () {
                    ref
                        .read(bmiStateNotifierProvider.notifier)
                        .upgradeGeschlecht('Anders');
                  },
                  child: Text('A'),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
