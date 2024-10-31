import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/generals/arrows_buttons.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v3_state_provider/logic.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v3_state_provider/widgets/alter_text.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v3_state_provider/widgets/button_widget.dart';

class HomeUnterrichtStateProvider extends ConsumerWidget {
  const HomeUnterrichtStateProvider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // print(ref.watch(detailsProvider));
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // ref.refresh(alterStateProvider);
            ref.invalidate(alterStateProvider);
            ref.invalidate(geschlechtProvider);
            ref.invalidate(groesseProvider);
            ref.invalidate(gewichtProvider);
          },
          child: const Icon(Icons.refresh),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AlterTextStateProvider(),
                  ButtonWidgetStateProvider(),
                  SizedBox(
                    width: 60,
                  ),
                  SizedBox(
                    height: 40,
                    width: 120,
                    child: Text(
                      ref.watch(geschlechtProvider),
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            ref.read(geschlechtProvider.notifier).state = 'Mänlich';
                          },
                          child: Text('M'),
                        ),
                        TextButton(
                          onPressed: () {
                            ref.read(geschlechtProvider.notifier).state = 'Weiblich';
                          },
                          child: Text('W'),
                        ),
                        TextButton(
                          onPressed: () {
                            ref.read(geschlechtProvider.notifier).state = 'Anders';
                          },
                          child: Text('A'),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Card(
                  color: ref.watch(colorProvider),
                  child: SizedBox(
                    height: 160,
                    width: 160,
                    child: Center(
                        child: Text(
                      ref.watch(bmiProvider).toStringAsFixed(2),
                      style: TextStyle(fontSize: 40),
                    )),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Gewicht: ${ref.watch(gewichtProvider)}',
                    style: TextStyle(fontSize: 30),
                  ),
                  ArrowButtons.vertical(
                    height: 40,
                    width: 40,
                    onPressedUp: () {
                      ref.read(gewichtProvider.notifier).state++;
                    },
                    onPressedDown: () {
                      ref.read(gewichtProvider.notifier).state--;
                    },
                    onLongPressedUp: () {
                      ref.read(gewichtProvider.notifier).state += 10;
                    },
                    onLongPressedDown: () {
                      ref.read(gewichtProvider.notifier).state -= 10;
                    },
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Text(
                    'Height: ${ref.watch(groesseProvider)}',
                    style: TextStyle(fontSize: 30),
                  ),
                  ArrowButtons.vertical(
                    height: 40,
                    width: 40,
                    onPressedUp: () {
                      ref.read(groesseProvider.notifier).state++;
                    },
                    onPressedDown: () {
                      ref.read(groesseProvider.notifier).state--;
                    },
                    onLongPressedUp: () => ref.read(groesseProvider.notifier).state += 10,
                    onLongPressedDown: () => ref.read(groesseProvider.notifier).state -= 10,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
