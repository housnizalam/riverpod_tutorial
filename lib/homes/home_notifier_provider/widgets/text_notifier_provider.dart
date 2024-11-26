import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/logic/notifier/notifier.dart';
import 'package:riverpod_tutorial/logic/provider/notifier_provider.dart';

class TextNotifierProvider extends ConsumerWidget {
  const TextNotifierProvider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Der Bau von AppState Objekt der in Provider Scope benutzt ist und die State kontrollirt
    final appstate = ref.watch(counterNotifierProvider);
    // Select Methode in Rverpod ist genau wie Selektor in Provider
    // damit baut die Seite sich wieder nur wenn die gewählte Value sich ändert
    // ohne Select Methode baut die Seite sich wieder mit je Änderung der Objekt
    // egal ob das gezielte Attribut (number in unser Beispiel) sich ändert oder nicht
    // was die Effizient der App sehr schlimm behindern
    // deshalb die Select Methode ist absulut Empfohlen, besondes mit größere Apps
    final number = ref.watch(counterNotifierProvider.select((value) => value.number.toString()));
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          appstate.number.toString(),
          style: TextStyle(fontSize: 35),
        ),
        Text(
          ref.watch(counterProvider).toString(),
          style: TextStyle(fontSize: 35),
        ),
      ],
    );
  }
}
