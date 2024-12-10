import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/homs.dart/v5_notifier_provider/logic.dart';
import 'package:riverpod_tutorial/homs.dart/v5_notifier_provider/widgets/alter.dart';
import 'package:riverpod_tutorial/homs.dart/v5_notifier_provider/widgets/bmi_widget.dart';
import 'package:riverpod_tutorial/homs.dart/v5_notifier_provider/widgets/geschlecht.dart';
import 'package:riverpod_tutorial/homs.dart/v5_notifier_provider/widgets/gewicht.dart';
import 'package:riverpod_tutorial/homs.dart/v5_notifier_provider/widgets/groesse.dart';

class NotifierHome extends ConsumerWidget {
  const NotifierHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ref.refresh(alterStateProvider);
          ref.invalidate(bmiNotifier);
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
                Expanded(child: AlterWidget()),
                Expanded(child: GeschlechtWidget()),
              ],
            ),
            BmiWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: GewichtWidget()),
                Expanded(child: GroesseWidget()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
