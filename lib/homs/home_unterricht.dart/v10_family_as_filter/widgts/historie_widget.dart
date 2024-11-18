import 'package:flutter/material.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v6_future_provider/logic/bmi_provider.dart';

class HistorieWidget extends StatelessWidget {
  const HistorieWidget({super.key, required this.bmiList});
  final List<BmiFutureUnterricht> bmiList;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (final bmi in bmiList)
          Padding(
            padding: const EdgeInsets.only(top: 10.0, right: 20.0, left: 20.0),
            child: Center(
              child: Card(
                child: ListTile(
                  title: FittedBox(
                    child: Text('${bmi.datum.day}/${bmi.datum.month}/${bmi.datum.year}'),
                  ),
                  subtitle: Text(' BMI: ${bmi.bmi.toStringAsFixed(2)}'),
                ),
              ),
            ),
          )
      ],
    );
  }
}
