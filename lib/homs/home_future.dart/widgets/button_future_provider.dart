import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:riverpod_tutorial/logic/providers.dart';

// die verlangte Providers kann nur in ConsumerWidget erkannt werden
class ButtonFutureProvider extends ConsumerWidget {
  const ButtonFutureProvider({super.key});

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
                  //so ist dei Provider Methoden aufgerufen
                  // read wird beim Methoden genutzt weil sie nur einmal passieren und
                  // brauchen keine rück Wert zu schauen 
                  ref.read(counterNotifierProvider.notifier).increment();
                },
                child: const Icon(Icons.add),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  ref.read(counterNotifierProvider.notifier).decrement();
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
