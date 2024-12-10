import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/homs.dart/v11_stream_provider/logic.dart';

class StreamHome extends ConsumerWidget {
  const StreamHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(counterStreamProvider);

    return Material(
      child: data.when(
        data: (value) => Center(
          child: Text(
            value.toString(),
            style: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
          ),
        ),
        loading: () => const Center(),
        error: (err, stack) => Center(
          child: Text('Error: $err'),
        ),
      ),
    );
  }
}
