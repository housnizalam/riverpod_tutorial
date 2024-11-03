import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v4_state_notifier_provider/logic.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v4_state_notifier_provider/widgets/alter.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v4_state_notifier_provider/widgets/bmi_widget.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v4_state_notifier_provider/widgets/geschlecht.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v4_state_notifier_provider/widgets/gewicht.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v4_state_notifier_provider/widgets/groesse.dart';

class HomeUnterrichtStateNotifierProvider extends ConsumerWidget {
  const HomeUnterrichtStateNotifierProvider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ref.refresh(alterStateProvider);
          ref.invalidate(bmiStateNotifierProvider);
        },
        child: const Icon(Icons.refresh),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: AlterWidgetStateNotifier()),
                Expanded(child: GeschlechtWidgetStateNotifier()),
              ],
            ),
            BmiWidgetStateNotifier(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: GewichtStaateNotifierUntericht()),
                Expanded(child: GroesseUnterrichtStateNotifier()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
