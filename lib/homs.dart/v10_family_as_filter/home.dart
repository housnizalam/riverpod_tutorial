import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/homs.dart/v10_family_as_filter/logic/api_provider.dart';
import 'package:riverpod_tutorial/homs.dart/v10_family_as_filter/widgts/datum_widget.dart';
import 'package:riverpod_tutorial/homs.dart/v10_family_as_filter/widgts/historie_widget.dart';

class FamilyAsFilterHome extends ConsumerStatefulWidget {
  const FamilyAsFilterHome({super.key});

  @override
  ConsumerState<FamilyAsFilterHome> createState() => _FamilyAsFilterState();
}

class _FamilyAsFilterState extends ConsumerState<FamilyAsFilterHome> {
  String filter = 'bmi';
  @override
  Widget build(BuildContext context) {
    final bmiList = ref.watch(getBmiListProvider(filter));
    // print(bmiList.first.toJson());

    return Material(
        child: Scaffold(
      endDrawer: Drawer(
        width: 150,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('BMI    '),
                Radio<String>(
                  value: 'bmi',
                  groupValue: filter,
                  onChanged: (value) {
                    setState(() {
                      filter = value!;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Datum'),
                Radio<String>(
                  value: 'datum',
                  groupValue: filter,
                  onChanged: (value) {
                    setState(() {
                      filter = value!;
                    });
                  },
                ),
              ],
            )
          ],
        ),
      ),
      appBar: AppBar(),
      body: Row(
        children: [
          const Expanded(flex: 2, child: DatumWidget()),
          const VerticalDivider(),
          Expanded(
            child: HistorieWidget(
              bmiList: bmiList,
            ),
          ),
        ],
      ),
    ));
  }
}
