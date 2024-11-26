import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v6_future_provider/logic/future_provider.dart';

class HistoryList extends ConsumerWidget {
  const HistoryList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bmiList = ref.watch(bmiListProvider);
    // print(bmiList.first.toJson());

    return ListView(
      children: [
        Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Historie'),
        )),
        for (final bmi in bmiList)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Card(
                child: ListTile(
                  title: FittedBox(
                    child: Text(
                        '${bmi.datum.day}/${bmi.datum.month}/${bmi.datum.year}'),
                  ),
                  subtitle: Text(' BMI: ${bmi.bmi.toStringAsFixed(2)}'),
                ),
              ),
            ),
          )
      ],
    );
  }
}
