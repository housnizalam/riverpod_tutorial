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

class BmiRechner {
  final double gewicht;
  final double groesse;
  final String geschlecht;
  const BmiRechner({
    required this.gewicht,
    required this.groesse,
    required this.geschlecht,
  });

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

class BMIStateNotifier extends StateNotifier<BmiRechner> {
  BMIStateNotifier() : super(const BmiRechner(gewicht: 80, groesse: 180, geschlecht: 'Mänlich'));

  void upgradeGewicht(double value) {
    state = state.copyWith(gewicht: state.gewicht + value);
  }

  void upgradeGroesse(int value) {
    state = state.copyWith(groesse: state.groesse + value);
  }

  void upgradeGeschlecht(String geschlecht) {
    state = state.copyWith(geschlecht: geschlecht);
  }
}

final bmiStateNotifierProvider = StateNotifierProvider<BMIStateNotifier, BmiRechner>((ref) {
  return BMIStateNotifier();
});
