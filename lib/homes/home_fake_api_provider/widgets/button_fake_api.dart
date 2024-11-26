import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/logic/fake_api_class/fake_api_class.dart';

// die verlangte Providers kann nur in ConsumerWidget erkannt werden
class ButtonfakeAPIProvider extends ConsumerWidget {
  const ButtonfakeAPIProvider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  //so ist dei Provider Methoden aufgerufen
                  // read wird beim Methoden genutzt weil sie nur einmal passieren und
                  // brauchen keine rück Wert zu schauen
                  ref
                      .read(fakeAPINotifierProvider.notifier)
                      .addUser(User(id: 4, name: 'User4', email: 'Username4@gmail.com'));
                  print('json');
                  print(ref.watch(fakeAPINotifierProvider).toJson());
                },
                child: const Text('Add'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  ref.read(fakeAPINotifierProvider.notifier).deleteUser();
                },
                child: const Text('Delete'),
              ),
            ),
            // ElevatedButton(
            //     onPressed: () {
            //       ref.read(fakeApiProvider.notifier).fetchUsers();
            //     },
            //     child: Text('Fetch')),
          ],
        ),
      ),
    );
  }
}
