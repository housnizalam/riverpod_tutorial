import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/homs.dart/v12_stream_with_api/logic/stream_provider.dart';

class HistorieWidget extends ConsumerWidget {
  const HistorieWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('History Widget wird gebaut');
    final bmiList = ref.watch(bmiStreamprovider);
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
                      child: Text('${bmi.datum.day}/${bmi.datum.month}/${bmi.datum.year}'),
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
