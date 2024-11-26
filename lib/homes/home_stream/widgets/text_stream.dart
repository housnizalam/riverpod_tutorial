import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/logic/appState/appstate.dart';
import 'package:riverpod_tutorial/logic/provider/stram_provider.dart';

class TextStreamProvider extends ConsumerWidget {
  const TextStreamProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<AppState> stream = ref.watch(counterStreamProvider);

    return stream.when(
      data: (data) => Center(
        child: Text(
          data.number.toString(),
          style: const TextStyle(fontSize: 35),
        ),
      ),
      error: (error, stackTrace) => Text(error.toString()),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
