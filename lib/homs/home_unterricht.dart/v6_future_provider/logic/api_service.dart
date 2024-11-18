import 'dart:convert';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v6_future_provider/logic/bmi_provider.dart';

String bmiJson1 = '''
[
 {
    "groesse": 181,
    "gewicht": 50,
    "datum": "2014-11-03T14:03:12.148753"
  },
   {
    "groesse": 181,
    "gewicht": 55,
    "datum": "2015-11-03T14:03:12.148753"
  },
   {
    "groesse": 181,
    "gewicht": 60,
    "datum": "2016-11-03T14:03:12.148753"
  },
   {
    "groesse": 181,
    "gewicht": 65,
    "datum": "2017-11-03T14:03:12.148753"
  },
   {
    "groesse": 181,
    "gewicht": 70,
    "datum": "2018-11-03T14:03:12.148753"
  },
   {
    "groesse": 181,
    "gewicht": 75,
    "datum": "2019-11-03T14:03:12.148753"
  },
   {
    "groesse": 181,
    "gewicht": 80,
    "datum": "2020-11-03T14:03:12.148753"
  },
 {
    "groesse": 181,
    "gewicht": 85,
    "datum": "2021-11-03T14:03:12.148753"
  },
  {
    "groesse": 181,
    "gewicht": 90,
    "datum": "2022-11-03T14:03:12.148753"
  },
  {
    "groesse": 181,
    "gewicht": 95,
    "datum": "2023-11-03T14:03:12.148753"
  },
  {
    "groesse": 181,
    "gewicht": 100,
    "datum": "2024-11-03T14:03:12.148753"
  }
]
''';

class APIService {
  static String bmiJson = bmiJson1;

  static List<BmiFutureUnterricht> getBmiList() {
    final List<BmiFutureUnterricht> bmiList = [];

    // Decode JSON as List<dynamic> and cast to List<Map<String, dynamic>>
    final List<dynamic> bmiMapList = jsonDecode(bmiJson);

    for (final Map<String, dynamic> bmiMap in bmiMapList.cast<Map<String, dynamic>>()) {
      bmiList.add(BmiFutureUnterricht.fromJson(bmiMap));
    }

    return bmiList;
  }

  static Future<List<BmiFutureUnterricht>> futureGetBmiList() async {
    await Future.delayed(const Duration(seconds: 2));
    return getBmiList();
  }
}
