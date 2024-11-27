import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/homs.dart/v12_stream_with_api/logic/bmi_provider.dart';
import 'package:riverpod_tutorial/homs.dart/v12_stream_with_api/logic/lokal_speicher_service.dart';


// Dies Provider ist für die Verwaltung des Zustands der BMI zuständig
final bmiProviderLokalSpeicher = StateNotifierProvider<BmiStateNotifierStreamUnterricht, BmiLokalSpeicher>((ref) {
  return BmiStateNotifierStreamUnterricht();
});

// Dies Provider ist für die Verwaltung des Zustands der Lokal Speicher zuständig
final lokalSpeicherProvider = Provider<LokalSpeicherService>((ref) {
  return LokalSpeicherService();
});

// Dies Provider ist für die Löschung aller BMI zuständig
final deleteAllSpeicherProvider = FutureProvider<void>((ref) {
  ref.watch(lokalSpeicherProvider).deleteAll();
});

// Dies Provider ist die lokale Speicherung Überwachung zuständig
final bmiStreamprovider = StreamProvider<List<BmiLokalSpeicher>>((ref) {
  // die aktuelle Situation des lokalen Speichers wird aufgerufen
  final lokalSpeicherService = ref.watch(lokalSpeicherProvider);
  // Das Stream wird als Periodisch festgelegt.
  // Die Ausgabe soll eine Liste von BMI sein
  return Stream.periodic(const Duration(seconds: 4), (_) => lokalSpeicherService.getBmiList())
  // Das Stream kann keine Future bearbeiten, deshalb wird asyncMap verwendet.
  // asyncMap wandelt die Future in List BMI um
      .asyncMap((event) => event);
});

// Dies Provider ist für Speicherung Überwachung zuständig
// Es baut aber die Seite erneut auf, nur wenn die Speicherung geändert wird

// Um das schaffen zu können, benutzen wir zwei Streams
// Der erste Stream ist für die Überwachung der Speicherung
// Der zweite Stream ist für den Bau der Seite
// Nur wenn die Speicherung geändert wird, der zweite Stream wird durch StreamController.add() aufgerufen
final effizientStreamProvider = StreamProvider<List<BmiLokalSpeicher>>((ref) {
    // die aktuelle Situation des lokalen Speichers wird aufgerufen

  final lokalSpeicherService = ref.watch(lokalSpeicherProvider);
 // Das StreamController wird erstellt
  final controller = StreamController<List<BmiLokalSpeicher>>();
 // Die vorherige Situation des lokalen Speichers wird festgelegt
 // Um die Änderung zu erkennen, wird die vorherige Situation mit der aktuellen Situation verglichen
  List<BmiLokalSpeicher>? previousState;
// Der erste Stream, der die Speicherung überwacht, wird erstellt
  Stream.periodic(const Duration(seconds: 1))
      .asyncMap((_) async => await lokalSpeicherService.getBmiList()) 
      .listen((currentState) {
    // Wenn die Speicherung geändert wird, wird der zweite Stream aufgerufen
    if (currentState.length != previousState?.length) {
      previousState = currentState; 
      // Die CurrentState wird in den Stream hinzugefügt
      controller.add(currentState); 
    }
  });
 // Der zweite Stream wird zurückgegeben
  return controller.stream;
});

