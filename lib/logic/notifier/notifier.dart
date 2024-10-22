import 'dart:developer';

import 'package:riverpod/riverpod.dart';
import 'package:riverpod_tutorial/logic/appState/appstate.dart';

// Um ein Provider bauen zu können muss Ein StateNotifier oder Notifier gebaut werden

//Notifier ist eine moderne verbesserte Vesion von StateNotifier und ist meistens damit empfählt
//weil es flexibler ist und bietet mehr Kontrolle über die Verwaltung von Zuständern
class CounterNotifier extends Notifier<AppState> {
  // Statt Konstraktor benutzt Notifier build methode
  @override
  // Notifier verlangt kein Konstruktor sonder ein build Funktion
  AppState build() => const AppState(number: 10);
  // hie kommt die verlangten Funktionen
  void increment() {
    final newMumber = state.number +1;
    state = state.copyWith(number: newMumber);
    log(state.number.toString());
  }

  void decrement() {
    state = state.copyWith(number: state.number - 1);
    log(state.number.toString());
  }

  void countUp() {
    state = state.copyWith(countUp: true, number: 0);
    print(state.countUp);
  }

  void countDown() {
    state = state.copyWith(countUp: false, number: 19);
    print(state.countUp);
  }
}




class CounterNotifier2 extends Notifier<AppState2> {
  @override
  AppState2 build() => const AppState2();
  void increment() {
    state = state.copyWith(number: state.number + 1);
    print(state.number);
  }

  void decrement() {
    state = state.copyWith(number: state.number - 1);
    print(state.number);
  }
}
