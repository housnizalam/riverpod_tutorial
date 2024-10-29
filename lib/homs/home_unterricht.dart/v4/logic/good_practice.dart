import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BmiRechner {
  final double alter;
  final double gewicht;
  final double groesse;
  final String geschlecht;
  BmiRechner({
    required this.alter,
    required this.gewicht,
    required this.groesse,
    required this.geschlecht,
  });

  BmiRechner copyWith({
    double? alter,
    double? gewicht,
    double? groesse,
    String? geschlecht,
  }) {
    return BmiRechner(
      alter: alter ?? this.alter,
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
  BMIStateNotifier()
      : super(BmiRechner(alter: 20, gewicht: 80, groesse: 180, geschlecht: 'Mänlich'));

  void upgradeAlter(int int) {
    state = state.copyWith(alter: state.alter + int);
  }

  void upgradeGewicht(int int) {
    state = state.copyWith(gewicht: state.gewicht + int);
  }

  void upgradeGroesse(int int) {
    state = state.copyWith(groesse: state.groesse + int);
  }

  void upgradeGeschlecht(String geschlecht) {
    state = state.copyWith(geschlecht: geschlecht);
  }

}

final bmiStateNotifierProvider = StateNotifierProvider<BMIStateNotifier, BmiRechner>((ref) => BMIStateNotifier());
