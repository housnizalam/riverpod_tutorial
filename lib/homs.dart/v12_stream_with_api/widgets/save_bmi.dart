import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/homs.dart/v12_stream_with_api/logic/stream_provider.dart';

class SaveBmiWidget extends ConsumerWidget {
  const SaveBmiWidget({super.key});

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
              },
              child: const Icon(Icons.save)),
        ),
      ),
    );
  }
}
