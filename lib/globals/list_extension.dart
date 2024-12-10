
import 'package:flutter/material.dart';

extension Vergleich<T> on List {
  bool isEqual(List<T> other) {
    if (length != other.length) return false;
    for (var i = 0; i < length; i++) {
      if (this[i] != other[i]) return false;
    }
    return true;
  }
// Im Extention kann man keine existierende Methode oder Operatoren überschreiben
//  @override
//   operator ==(Object other) {
//     if (identical(this, other)) return true;
//     return other is List && other.isEqual(this);
//   }
}

