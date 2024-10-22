import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/logic/appState/appstate.dart';

// Um ein Provider bauen zu können muss Ein StateNotifier oder Notifier gebaut werden
// die State Notifier oder Notifier beinhaltet normalerweise die verlangte Funktionen
// <> ind diese Klammern wird die gezielte Klasse definiert
class AppStateNotifier extends StateNotifier<AppState> {
  // der Bau Der Notifier Klasse verlangt ein Super um die Eigenschaften der Mutter Klasse anzurufen
  AppStateNotifier() : super(const AppState(number: 10));
// hie kommt die verlangten Funktionen
  void increment() {
    state = state.copyWith(number: state.number + 1);
    print(state.number);
  }

  void longincrement() {
    state = state.copyWith(number: state.number + 10);
    print(state.number);
  }

  void decrement() {
    state = state.copyWith(number: state.number - 1);
    print(state.number);
  }
}



// diese kann nur int Wert zurück geben und verlangt keine klasse
// es kann nur mit einzelne Variabeln benutzt werden
class SingelNotifier extends StateNotifier<int> {
  SingelNotifier() : super(0);
  void increment() {
    state++;
    print(state);
  }

  void decrement() {
    state--;
    print(state);
  }
}
