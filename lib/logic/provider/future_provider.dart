// hier wird die Future Provider gerbaut
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/logic/appState/appstate.dart';
import 'package:riverpod_tutorial/logic/provider/notifier_provider.dart';

final counterFutureProvider = FutureProvider<AppState>(
  (ref) async {
    // Simulation eine Daten Delay
    await Future.delayed(
      const Duration(milliseconds: 500),
    );
    // durch ref.watch(counterNotifierProvider) würde die verlangte Methoden geschafft
    // und die verlangte neu Appstate erstellt
    return ref.watch(counterNotifierProvider);
  },
);

