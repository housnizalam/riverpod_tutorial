import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/globals/arrows_buttons.dart';
import 'package:riverpod_tutorial/homs.dart/v8_auto_dispose/logic.dart';

class KomplexWidget extends ConsumerWidget {
  const KomplexWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final a = ref.watch(autodisposeA);
    final b = ref.watch(autodisposeB);
    final c = ref.watch(autodisposeC);

    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'A: $a',
                    style: const TextStyle(fontSize: 40),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  ArrowButtons.vertical(
                    height: 40,
                    width: 40,
                    onPressedUp: () {
                      ref.read(autodisposeA.notifier).state++;
                    },
                    onPressedDown: () {
                      ref.read(autodisposeA.notifier).state--;
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'B: $b',
                    style: const TextStyle(fontSize: 40),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  ArrowButtons.vertical(
                    height: 40,
                    width: 40,
                    onPressedUp: () {
                      ref.read(autodisposeB.notifier).state++;
                    },
                    onPressedDown: () {
                      ref.read(autodisposeB.notifier).state--;
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'C: $c',
                    style: const TextStyle(fontSize: 40),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  ArrowButtons.vertical(
                    height: 40,
                    width: 40,
                    onPressedUp: () {
                      ref.read(autodisposeC.notifier).state++;
                    },
                    onPressedDown: () {
                      ref.read(autodisposeC.notifier).state--;
                    },
                  ),
                ],
              ),
         
            ],
          ),
        ));
  }
}
