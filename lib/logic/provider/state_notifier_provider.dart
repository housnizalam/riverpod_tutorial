import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/logic/appState/appstate.dart';
import 'package:riverpod_tutorial/logic/notifier/state_notifier.dart';

// die Providers sind einfach Objekte von Notifier Klassen
// das Provider verlangt eine Notifier Klasse und die gezielte Klassse (AppState z.b.)
// duech das Provider Kann sowol die Appstate Attribute als auch die Notifier Funktionen aufgeruft werden
// Der bau von State Notifier Provider
final counterStateNotifierProvider = StateNotifierProvider<AppStateNotifier, AppState>((ref) => AppStateNotifier());
// dieses Provider kann nur ein Int Value repräsentieren
final singelCounterStateNotifierProvider = StateNotifierProvider<SingelNotifier, int>((ref) => SingelNotifier());


