import 'package:flutter/material.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v6_future_provider/widgets/add_datum.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v6_future_provider/widgets/add_gewicht.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v6_future_provider/widgets/add_groesse.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v6_future_provider/widgets/bmi_text.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v6_future_provider/widgets/histori_list_future_whendata.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v6_future_provider/widgets/history_List.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v6_future_provider/widgets/history_List_future_builder.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v6_future_provider/widgets/history_List_future_when.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v6_future_provider/widgets/history_List_future_onloading.dart';

class HomeUnterrichtFutureProvider extends StatelessWidget {
  const HomeUnterrichtFutureProvider({super.key});

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
                AddGrosse(),
                AddGewicht(),
                BmiFutureUntericht(),
              ],
            ),
          ),
          VerticalDivider(
            color: Colors.black,
            thickness: 5,
          ),
          Expanded(child: HistoryListFutureWhenData()),
        ],
      ),
    );
  }
}
