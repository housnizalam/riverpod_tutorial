import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
class BmiFutureUnterricht {
  final int groesse;
  final int gewicht;
  final DateTime datum;

  BmiFutureUnterricht({
    required this.groesse,
    required this.gewicht,
    required this.datum,
  });

  double get bmi => gewicht / (groesse * groesse * 0.0001);

  Color get bmiColor {
    if (bmi < 18.5) {
      return Colors.blue;
    } else if (bmi < 25) {
      return Colors.green;
    } else if (bmi < 30) {
      return Colors.orange;
    } else {
      return Colors.red;
    }
  }

  BmiFutureUnterricht copyWith({
    int? groesse,
    int? gewicht,
    DateTime? datum,
  }) {
    return BmiFutureUnterricht(
      groesse: groesse ?? this.groesse,
      gewicht: gewicht ?? this.gewicht,
      datum: datum ?? this.datum,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'groesse': groesse,
      'gewicht': gewicht,
      'datum': datum.toIso8601String(),
    };
  }

  String toJson() {
    return json.encode(toMap());
  }

  factory BmiFutureUnterricht.fromJson(Map<String, dynamic> map) {
    return BmiFutureUnterricht(
      groesse: map['groesse'],
      gewicht: map['gewicht'],
      datum: DateTime.parse(map['datum']),
    );
  }
}


class BmiStateNotifierFutureUnterricht
    extends StateNotifier<BmiFutureUnterricht> {
  BmiStateNotifierFutureUnterricht()
      : super(BmiFutureUnterricht(
            groesse: 180, gewicht: 80, datum: DateTime.now()));
  void changeGroesse(int groesse) {
    state = state.copyWith(groesse: state.groesse + groesse);
  }

  void changeGewicht(int gewicht) {
    state = state.copyWith(gewicht: state.gewicht + gewicht);
  }

  void changeDatum(DateTime datum) {
    state = state.copyWith(datum: datum);
  }
}

final bmiProviderFutureUnterricht = StateNotifierProvider<
    BmiStateNotifierFutureUnterricht, BmiFutureUnterricht>((ref) {
  return BmiStateNotifierFutureUnterricht();
});
