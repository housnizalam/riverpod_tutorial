// ignore_for_file: public_member_api_docs, sort_constructors_first
// AppState ist einfach die Kalsse deren Attribute in App gebraucht sind
// Es ist eine normale Klasse und braucht keine besondere Bau Struktur
// Die Klasse muss aber ein Coppy With Methode haben, weil das Notifier empfängt ein
// Objekt der Klasse und nicht eine Attribut
class AppState {
  final int number;
  final bool? countUp;
  

  const AppState({
    required this.number,
    this.countUp,
  });

  AppState copyWith({
    int? number,
    bool? countUp,
  }) =>
      AppState(
        number: number ?? this.number,
        countUp: countUp ?? this.countUp,
      );


  @override
  String toString() => number.toString();
}

class AppState2 {
  final int _number;

  const AppState2({
    int? number,
  }) : _number = number ?? 0;
  int get number => _number;

  AppState2 copyWith({
    int? number,
  }) =>
      AppState2(
        number: number ?? this.number,
      );

  @override
  String toString() => number.toString();
}

// diese Klasse funktioniert mit Riverpod nicht weilo sie keine Copy With hat,
// weil ohne CopyWith kann diese Klasse kein Objekt zurück geben sondern eine Attribut
class EasyCounterKlasse {
  int number;
  EasyCounterKlasse({
    required this.number,
  });
}
