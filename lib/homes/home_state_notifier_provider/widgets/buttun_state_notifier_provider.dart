import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:riverpod_tutorial/logic/provider/state_notifier_provider.dart';

class ButtonStateNotifierProvider extends ConsumerWidget {
  const ButtonStateNotifierProvider({super.key});

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
                  ref.read(counterStateNotifierProvider.notifier).increment();
                },
                onLongPress: () {
                  ref.read(counterStateNotifierProvider.notifier).longincrement();
                },
                child: const Icon(Icons.add),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  ref.read(counterStateNotifierProvider.notifier).decrement();
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
