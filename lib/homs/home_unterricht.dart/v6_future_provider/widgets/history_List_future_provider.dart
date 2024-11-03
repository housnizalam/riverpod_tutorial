import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v6_future_provider/logic/future_provider.dart';

class HistoryListFutureProvider extends ConsumerWidget {
  const HistoryListFutureProvider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bmiList = ref.watch(bmiListFutureProvider);
    // print(bmiList.first.toJson());

    return bmiList.when(
      error: (error, stackTrace) => Center(child: Text('Error: $error')),
      loading: () => const Center(child: CircularProgressIndicator()),
      data: (bmiList) => ListView(
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
      ),
    );
  }
}
