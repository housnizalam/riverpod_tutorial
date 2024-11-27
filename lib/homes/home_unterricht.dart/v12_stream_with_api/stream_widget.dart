import 'package:flutter/material.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v12_stream_with_api/widgets/add_datum.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v12_stream_with_api/widgets/add_gewicht.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v12_stream_with_api/widgets/add_groesse.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v12_stream_with_api/widgets/bmi_text.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v12_stream_with_api/widgets/delete_all_button.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v12_stream_with_api/widgets/history_List_future_provider.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v12_stream_with_api/widgets/save_bmi.dart';

class StreamWithLokalSpeicher extends StatelessWidget {
  const StreamWithLokalSpeicher({super.key});

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
                AddDatumWidgetLokalSpeicher(),
                SizedBox(height: 50),
                AddGrosseLokalSpeicher(),
                AddGewichtLokalSpeicher(),
                BmiFutureUnterichtLokalSpeicher(),
                SaveBmi(),
                DeleteAll(),
              ],
            ),
          ),
          VerticalDivider(
            color: Colors.black,
            thickness: 5,
          ),
          Expanded(child: HistoryListFutureProviderLokalSpeicher()),
        ],
      ),
    );
  }
}
