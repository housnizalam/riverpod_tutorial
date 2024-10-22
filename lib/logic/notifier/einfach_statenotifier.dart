import 'package:flutter_riverpod/flutter_riverpod.dart';

class EinfachCounterNotifier extends StateNotifier<int> {
  EinfachCounterNotifier() : super(0);
  void increment() {
    state++;
    print(state);
  }

  void decrement() {
    state--;
    print(state);
  }
}