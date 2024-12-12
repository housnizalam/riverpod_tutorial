import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final alterStateProvider = StateProvider<int>((ref) => 20);
final geschlechtProvider = StateProvider<String>((ref) => 'Mänlich');
final gewichtProvider = StateProvider<int>((ref) => 80);
final groesseProvider = StateProvider<int>((ref) => 180);

// bmi Provider
final bmiProvider = Provider<double>((ref) {
  // hier sind die verlangte Providern aufgerufen
  final gewicht = ref.watch(gewichtProvider);
  final groesse = ref.watch(groesseProvider);
  // hier wird der BMI berechnet
  return gewicht / ((groesse / 100) * (groesse / 100));
});

// color Provider
final colorProvider = Provider<Color>((ref) {
  // hier sind die verlangte Providern aufgerufen
  final bmi = ref.watch(bmiProvider);
  final geschlecht = ref.watch(geschlechtProvider);

  // Farbisch Bewertung des BMI
  if (geschlecht == 'Mänlich') {
    if (bmi < 18.5) {
      return Colors.blue;
    } else if (bmi < 25) {
      return Colors.green;
    } else if (bmi < 30) {
      return Colors.orange;
    } else {
      return Colors.red;
    }
  } else {
    if (bmi < 17.5) {
      return Colors.blue;
    } else if (bmi < 24) {
      return Colors.green;
    } else if (bmi < 29) {
      return Colors.orange;
    } else {
      return Colors.red;
    }
  }
});


