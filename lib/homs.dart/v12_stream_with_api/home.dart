import 'package:flutter/material.dart';
import 'package:riverpod_tutorial/homs.dart/v12_stream_with_api/widgets/add_datum.dart';
import 'package:riverpod_tutorial/homs.dart/v12_stream_with_api/widgets/add_gewicht.dart';
import 'package:riverpod_tutorial/homs.dart/v12_stream_with_api/widgets/add_groesse.dart';
import 'package:riverpod_tutorial/homs.dart/v12_stream_with_api/widgets/bmi_text.dart';
import 'package:riverpod_tutorial/homs.dart/v12_stream_with_api/widgets/delete_all_button.dart';
import 'package:riverpod_tutorial/homs.dart/v12_stream_with_api/widgets/historie.dart';
import 'package:riverpod_tutorial/homs.dart/v12_stream_with_api/widgets/save_bmi.dart';

class StreamWithLokalSpeicherHome extends StatelessWidget {
  const StreamWithLokalSpeicherHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Row(
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
                SaveBmiWidget(),
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
