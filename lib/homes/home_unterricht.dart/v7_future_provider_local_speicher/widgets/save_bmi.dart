import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v7_future_provider_local_speicher/logic/future_provider.dart';

class SaveBmi extends ConsumerWidget {
  const SaveBmi({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: SizedBox(
          height: 40,
          child: ElevatedButton(
              onPressed: () async {
                final newBmi = ref.watch(bmiProviderLokalSpeicher);
                await ref.read(lokalSpeicherProvider).addBmi(newBmi);
                ref.invalidate(lokalSpeicherProvider);
                // ref.read(lokalSpeicherProvider).deleteAll();
              },
              child: const Icon(Icons.save)),
        ),
      ),
    );
  }
}
