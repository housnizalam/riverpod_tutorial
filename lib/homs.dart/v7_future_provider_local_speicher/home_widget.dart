import 'package:flutter/material.dart';
import 'package:riverpod_tutorial/homs.dart/v7_future_provider_local_speicher/widgets/add_datum.dart';
import 'package:riverpod_tutorial/homs.dart/v7_future_provider_local_speicher/widgets/add_gewicht.dart';
import 'package:riverpod_tutorial/homs.dart/v7_future_provider_local_speicher/widgets/add_groesse.dart';
import 'package:riverpod_tutorial/homs.dart/v7_future_provider_local_speicher/widgets/bmi_text.dart';
import 'package:riverpod_tutorial/homs.dart/v7_future_provider_local_speicher/widgets/delete_all_button.dart';
import 'package:riverpod_tutorial/homs.dart/v7_future_provider_local_speicher/widgets/history_List_future_provider.dart';
import 'package:riverpod_tutorial/homs.dart/v7_future_provider_local_speicher/widgets/save_bmi.dart';

class FutureWithLokalSpeicherHome extends StatelessWidget {
  const FutureWithLokalSpeicherHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              children: [
                SizedBox(height: 50),
                AddDatumWidget(),
                SizedBox(height: 50),
                AddGrosseWidget(),
                AddGewichtWidget(),
                BmiWidget(),
                SaveBmi(),
                DeleteAllWidget(),
              ],
            ),
          ),
          VerticalDivider(
            color: Colors.black,
            thickness: 5,
          ),
          Expanded(child: HistorieWidget()),
        ],
      ),
    );
  }
}
