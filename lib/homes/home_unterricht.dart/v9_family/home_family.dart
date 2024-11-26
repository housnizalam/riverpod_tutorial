import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/globals/arrows_buttons.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v9_family/logic.dart';

class HomeUnterrichtfamilyProvider extends ConsumerStatefulWidget {
  const HomeUnterrichtfamilyProvider({super.key});

  @override
  ConsumerState<HomeUnterrichtfamilyProvider> createState() => _HomeUnterrichtfamilyProviderState();
}

class _HomeUnterrichtfamilyProviderState extends ConsumerState<HomeUnterrichtfamilyProvider> {
  int gewicht = 80;
  int groesse = 180;
  @override
  Widget build(BuildContext context) {
    final bmiMapFamily = ref.watch(bmiProviderFamily({'Gewicht': gewicht, 'Groesse': groesse}));
    final bmiObjFamily = ref.watch(bmiProviderOblektFamily(BMIFamily(gewicht: gewicht, groesse: groesse)));

    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Gewicht: $gewicht',
                  style: const TextStyle(fontSize: 40),
                ),
                const SizedBox(
                  width: 40,
                ),
                ArrowButtons.vertical(
                  height: 40,
                  width: 40,
                  onPressedUp: () {
                    setState(() {
                      gewicht++;
                    });
                    ref.read(bmiProviderFamily({'Gewicht': gewicht, 'Groesse': groesse}));
                    ref.read(bmiProviderOblektFamily(BMIFamily(gewicht: gewicht, groesse: groesse)));
                  },
                  onPressedDown: () {
                    setState(() {
                      gewicht--;
                    });
                    ref.read(bmiProviderFamily({'Gewicht': gewicht, 'Groesse': groesse}));
                    ref.read(bmiProviderOblektFamily(BMIFamily(gewicht: gewicht, groesse: groesse)));
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Height: $groesse',
                  style: const TextStyle(fontSize: 40),
                ),
                const SizedBox(
                  width: 40,
                ),
                ArrowButtons.vertical(
                  height: 40,
                  width: 40,
                  onPressedUp: () {
                    setState(() {
                      groesse++;
                    });
                    ref.read(bmiProviderFamily({'Gewicht': gewicht, 'Groesse': groesse}));
                    ref.read(bmiProviderOblektFamily(BMIFamily(gewicht: gewicht, groesse: groesse)));
                  },
                  onPressedDown: () {
                    setState(() {
                      groesse--;
                    });
                    ref.read(bmiProviderFamily({'Gewicht': gewicht, 'Groesse': groesse}));
                    ref.read(bmiProviderOblektFamily(BMIFamily(gewicht: gewicht, groesse: groesse)));
                  },
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.blue,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'BMI aus Mapp_Family: ${bmiMapFamily.toStringAsFixed(2)}',
                      style: const TextStyle(fontSize: 40),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.blue,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'BMI aus Objekt_Family: $bmiObjFamily',
                      style: const TextStyle(fontSize: 40),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
