import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/logic/provider/future_provider.dart';

class TextFutureProvider extends ConsumerWidget {
  const TextFutureProvider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Der Bau von AppState Objekt der in Provider Scope benutzt ist und die State kontrollirt
    final appstate = ref.watch(counterFutureProvider);
    // Future Infos kann ein paar Sekunden dauern und in diesem Fall wird ein CircularProgressIndicator gezeigt
    // und wenn es gibt ein Fehler wird es den gezeigt.
    // wenn alles in ordnung ist wir die installierte Infos gezeigt.
    return appstate.when(
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
