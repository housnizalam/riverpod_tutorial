import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v7_future_provider_local_speicher/logic/future_provider.dart';

class HistoryListFutureProviderLokalSpeicher extends ConsumerWidget {
  const HistoryListFutureProviderLokalSpeicher({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bmiList = ref.watch(bmiListLokalSpeicherProvider);
    // print(bmiList.first.toJson());

    return bmiList.when(
      error: (error, stackTrace) => Center(child: Text('Error: $error')),
      loading: () => const Center(child: CircularProgressIndicator()),
      data: (bmiList) => ListView(
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
