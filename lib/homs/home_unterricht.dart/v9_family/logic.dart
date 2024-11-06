import 'package:flutter_riverpod/flutter_riverpod.dart';

final bmiProviderFamily = StateProvider.family<double, Map<String, int>>((ref, bmiMap) {
  final gewicht = bmiMap['Gewicht']!;
  final groesse = bmiMap['Groesse']!;
  return gewicht / ((groesse / 100) * (groesse / 100));
});

class BMIFamily {
  final int gewicht;
  final int groesse;
  const BMIFamily({required this.gewicht, required this.groesse});
}

final bmiProviderOblektFamily = StateProvider.family<double, BMIFamily>((ref, bmiObjekt) {
  final gewicht = bmiObjekt.gewicht;
  final groesse = bmiObjekt.groesse;
  double bmi = gewicht / ((groesse / 100) * (groesse / 100));
  int bmiInt = (bmi * 100).round();
  return bmiInt / 100;
});
