import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/logic/fake_api_class/fake_api_class.dart';

class TextFakeAPIProvider extends ConsumerWidget {
  const TextFakeAPIProvider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Der Bau von AppState Objekt der in Provider Scope benutzt ist und die State kontrollirt
    final appstate = ref.watch(getAllUsers);
    // Future Infos kann ein paar Sekunden dauern und in diesem Fall wird ein CircularProgressIndicator gezeigt
    // und wenn es gibt ein Fehler wird es den gezeigt.
    // wenn alles in ordnung ist wir die installierte Infos gezeigt.
    return appstate.when(
      data: (data) => Center(
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(data[index].name),
              subtitle: Text(data[index].email),
            );
          },
        ),
      ),
      error: (error, stackTrace) {
        print(error.toString());
        return Text(error.toString());
      },
      loading: () => Center(child: SizedBox(height: 100, width: 100, child: CircularProgressIndicator())),
    );
  }
}
