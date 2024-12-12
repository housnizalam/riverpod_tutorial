import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AlterStateNotifier extends StateNotifier<int> {
  AlterStateNotifier() : super(20);

  upgradeAlter(int value) {
    state += value;
  }

  void increment() => state++;
  void decrement() => state--;
}

final alterStateNotifierProvider = StateNotifierProvider<AlterStateNotifier, int>((ref) => AlterStateNotifier());

// Klass BmiRechner erstellen
class BmiRechner {
  // die klasse soll immutable sein
  final double gewicht;
  final double groesse;
  final String geschlecht;
  const BmiRechner({
    required this.gewicht,
    required this.groesse,
    required this.geschlecht,
  });
  // nur copyWith Methode soll hier erstellt werden
  BmiRechner copyWith({
    double? gewicht,
    double? groesse,
    String? geschlecht,
  }) {
    return BmiRechner(
      gewicht: gewicht ?? this.gewicht,
      groesse: groesse ?? this.groesse,
      geschlecht: geschlecht ?? this.geschlecht,
    );
  }

  double get bmi {
    return gewicht / ((groesse / 100) * (groesse / 100));
  }

  Color get bmiColor {
    if (bmi < 18.5) {
      return Colors.red;
    } else if (bmi < 25) {
      return Colors.green;
    } else if (bmi < 30) {
      return Colors.orange;
    } else {
      return Colors.red;
    }
  }
}
// StateNotifier Klasse erstellen
class BMIStateNotifier extends StateNotifier<BmiRechner> {
  // Konstruktor durch super erstellen
  BMIStateNotifier() : super(const BmiRechner(gewicht: 80, groesse: 180, geschlecht: 'Mänlich'));
  // die verlangte Funktionen erstellen
  void upgradeGewicht(double value) {
    // die neue State soll immer in der state gespeichert werden
    state = state.copyWith(gewicht: state.gewicht + value);
  }

  void upgradeGroesse(int value) {
    state = state.copyWith(groesse: state.groesse + value);
  }

  void upgradeGeschlecht(String geschlecht) {
    state = state.copyWith(geschlecht: geschlecht);
  }
}
// Der Bau von Provider
final bmiStateNotifierProvider = StateNotifierProvider<BMIStateNotifier, BmiRechner>((ref) {
  return BMIStateNotifier();
});
