import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AlterNotifier extends Notifier<int> {
  @override
  int build() => 20;

  void upgradeAlter(int value) {
    state += value;
  }
}

final alterNotifier = NotifierProvider<AlterNotifier, int>(() {
  return AlterNotifier();
});

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

class BmiRechnerNotifier extends Notifier<BmiRechner> {
  @override
  BmiRechner build() => (const BmiRechner(gewicht: 80, groesse: 180, geschlecht: 'Mänlich'));

  void upgradeGewicht(int gewicht) {
    state = state.copyWith(gewicht: state.gewicht + gewicht);
  }

  void upgradeGroesse(int grosse) {
    state = state.copyWith(groesse: state.groesse + grosse);
  }

  void upgradeGeschlecht(String geschlecht) {
    state = state.copyWith(geschlecht: geschlecht);
  }
}

final bmiNotifier = NotifierProvider<BmiRechnerNotifier, BmiRechner>(() {
  return BmiRechnerNotifier();
});

class BmiRechnerNotifier2 extends Notifier<BmiRechnerNotifier2> {
  final double alter;
  final double gewicht;
  final double groesse;
  final String geschlecht;

  BmiRechnerNotifier2({
    this.alter = 20,
    this.gewicht = 80,
    this.groesse = 180,
    this.geschlecht = 'Männlich',
  });

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

  @override
  BmiRechnerNotifier2 build() => BmiRechnerNotifier2();

  void upgradeAlter(int value) {
    state = BmiRechnerNotifier2(
      alter: state.alter + value,
      gewicht: gewicht,
      groesse: groesse,
      geschlecht: geschlecht,
    );
  }

  void upgradeGewicht(int value) {
    state = BmiRechnerNotifier2(
      alter: alter,
      gewicht: state.gewicht + value,
      groesse: groesse,
      geschlecht: geschlecht,
    );
  }

  void upgradeGroesse(int value) {
    state = BmiRechnerNotifier2(
      alter: alter,
      gewicht: gewicht,
      groesse: state.groesse + value,
      geschlecht: geschlecht,
    );
  }

  void upgradeGeschlecht(String newGeschlecht) {
    state = BmiRechnerNotifier2(
      alter: alter,
      gewicht: gewicht,
      groesse: groesse,
      geschlecht: newGeschlecht,
    );
  }
}

// final bmiChangeNotifier = NotifierProvider<BmiRechnerChangeNotifier2, BmiRechnerChangeNotifier2>(
//   () => BmiRechnerChangeNotifier2(),
// );
