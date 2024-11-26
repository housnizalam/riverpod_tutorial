import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/globals/arrows_buttons.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v3_state_provider/logic.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v3_state_provider/widgets/alter_text.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v3_state_provider/widgets/button_widget.dart';

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
                  Expanded(flex: 3, child: AlterTextStateProvider()),
                  Expanded(child: ButtonWidgetStateProvider()),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 3,
                    child: FittedBox(
                      child: Text(
                        ref.watch(geschlechtProvider),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            ref.read(geschlechtProvider.notifier).state =
                                'Mänlich';
                          },
                          child: Text('M'),
                        ),
                        TextButton(
                          onPressed: () {
                            ref.read(geschlechtProvider.notifier).state =
                                'Weiblich';
                          },
                          child: Text('W'),
                        ),
                        TextButton(
                          onPressed: () {
                            ref.read(geschlechtProvider.notifier).state =
                                'Anders';
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
                  Expanded(flex: 3,
                    child: FittedBox(
                      child: Text(
                        'Gewicht: ${ref.watch(gewichtProvider)}',
                      ),
                    ),
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
                    width: 20,
                  ),
                  Expanded(flex: 3,
                    child: FittedBox(
                      child: Text(
                        'Height: ${ref.watch(groesseProvider)}',
                      ),
                    ),
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
                    onLongPressedUp: () =>
                        ref.read(groesseProvider.notifier).state += 10,
                    onLongPressedDown: () =>
                        ref.read(groesseProvider.notifier).state -= 10,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
