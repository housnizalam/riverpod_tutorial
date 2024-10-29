import 'package:flutter_riverpod/flutter_riverpod.dart';

class AlterStateNotifier extends StateNotifier<double> {
  AlterStateNotifier() : super(0.0);
  upgradeAlter(int) {
    state += int;
  }

  void increment() => state++;
  void decrement() => state--;
}

final alterStateNotifierProvider = StateNotifierProvider<AlterStateNotifier, double>((ref) => AlterStateNotifier());

// class fakeStateNotifier<T>{
//   fakeStateNotifier(this.state);
//   T state;

// }
// class FakeBmiStateNotifier extends	  fakeStateNotifier<double>{
//   FakeBmiStateNotifier():super(0) ;
// }