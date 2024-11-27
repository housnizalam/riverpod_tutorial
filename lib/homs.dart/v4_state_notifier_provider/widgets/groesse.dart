import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/globals/arrows_buttons.dart';
import 'package:riverpod_tutorial/homs.dart/v4_state_notifier_provider/logic.dart';

class GroesseWidget extends ConsumerWidget {
  const GroesseWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('Größe Widget wird gebaut');
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: FittedBox(
            child: Text(
              'Größe: ${ref.watch(bmiStateNotifierProvider.select(
                (value) => value.groesse,
              ))}',
              style: const TextStyle(fontSize: 30),
            ),
          ),
        ),
        Expanded(
          child: ArrowButtons.vertical(
            height: 40,
            width: 40,
            onPressedUp: () {
              ref.read(bmiStateNotifierProvider.notifier).upgradeGroesse(1);
            },
            onPressedDown: () {
              ref.read(bmiStateNotifierProvider.notifier).upgradeGroesse(-1);
            },
            onLongPressedUp: () => ref.read(bmiStateNotifierProvider.notifier).upgradeGroesse(10),
            onLongPressedDown: () => ref.read(bmiStateNotifierProvider.notifier).upgradeGroesse(-10),
          ),
        ),
      ],
    );
  }
}
