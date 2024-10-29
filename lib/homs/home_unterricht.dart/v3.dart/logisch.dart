import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final alterStateProvider = StateProvider<int>((ref) => 20);
final geschlechtProvider = StateProvider<String>((ref) => 'männlich');
final gewichtProvider = StateProvider<int>((ref) => 80);
final groesseProvider = StateProvider<int>((ref) => 180);
final bmiProvider = Provider<double>((ref) {
  final gewicht = ref.watch(gewichtProvider);
  final groesse = ref.watch(groesseProvider);
  return gewicht / ((groesse / 100) * (groesse / 100));
});
final colorProvider = Provider<Color>((ref) {
  final bmi = ref.watch(bmiProvider);
  if (bmi < 18.5) {
    return Colors.blue;
  } else if (bmi < 25) {
    return Colors.green;
  } else if (bmi < 30) {
    return Colors.orange;
  } else {
    return Colors.red;
  }
});
