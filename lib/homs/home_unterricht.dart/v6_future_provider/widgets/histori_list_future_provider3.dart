import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v6_future_provider/logic/future_provider.dart';

class HistoryListFutureProvider3 extends ConsumerWidget {
  const HistoryListFutureProvider3({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bmiList = ref.watch(bmiListFutureProvider);
    Widget x = SizedBox();
    bmiList.whenData((value) => x = ListView(
          children: [
            const Center(
                child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Historie'),
            )),
            for (final bmi in value)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Card(
                    child: ListTile(
                      title: FittedBox(
                        child: Text('${bmi.datum.day}/${bmi.datum.month}/${bmi.datum.year}'),
                      ),
                      subtitle: Text(' BMI: ${bmi.bmi.toStringAsFixed(2)}'),
                    ),
                  ),
                ),
              )
          ],
        ));
    // print(bmiList.first.toJson());
 
    return x;
  }
}
