import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/logic/provider/notifier_provider.dart';

import 'package:riverpod_tutorial/logic/provider/state_notifier_provider.dart';

class ButtonState extends ConsumerWidget {
  const ButtonState({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  ref.read(counterNotifierProvider.notifier).increment();
                  ref.read(counterStateNotifierProvider.notifier).increment();
                  ref.read(singelCounterStateNotifierProvider.notifier).increment();
                  ref.read(counterNotifierProvider2.notifier).increment();
                },
                child: const Icon(Icons.add),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  ref.read(counterNotifierProvider.notifier).decrement();
                  ref.read(counterStateNotifierProvider.notifier).decrement();
                  ref.read(singelCounterStateNotifierProvider.notifier).decrement();
                  ref.read(counterNotifierProvider2.notifier).decrement();
                },
                child: const Icon(Icons.exposure_minus_1_rounded),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
