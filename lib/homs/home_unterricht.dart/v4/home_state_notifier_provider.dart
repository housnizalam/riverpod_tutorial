import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v4/logic/good_practice.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v4/widgets/alter.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v4/widgets/bmi_widget.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v4/widgets/geschlecht.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v4/widgets/gewicht.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v4/widgets/groesse.dart';

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
                AlterWidgetNotifier(),
                GeschlechtWidgetNotifier(),
              ],
            ),
            BmiWidgetNotifier(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GewichtNotifierUntericht(),
                GroesseUnterrichtNotifier(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
