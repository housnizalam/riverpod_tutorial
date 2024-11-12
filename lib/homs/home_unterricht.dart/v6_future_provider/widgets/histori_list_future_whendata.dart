import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v6_future_provider/logic/bmi_provider.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v6_future_provider/logic/future_provider.dart';

class HistoryListFutureWhenData extends ConsumerWidget {
  const HistoryListFutureWhenData({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bmiList = <BmiFutureUnterricht>[];
    final futureBmiList = ref.watch(bmiListFutureProvider);
    futureBmiList.whenData((value) =>bmiList.addAll(value) ,);
    // print(bmiList.first.toJson());

    return futureList(bmiList);
  }
}

Widget futureList(List<BmiFutureUnterricht> bmiList) {
  return ListView(
    children: [
      const Center(
          child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text('Historie'),
      )),
      for (final bmi in bmiList)
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
  );
}
