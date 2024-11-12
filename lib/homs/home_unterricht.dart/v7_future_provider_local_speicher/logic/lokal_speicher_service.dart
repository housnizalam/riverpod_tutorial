import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v7_future_provider_local_speicher/logic/bmi_provider.dart';

class LokalSpeicherService {
  Future<String> get _localPath async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      return directory.path;
    } catch (e) {
      print('Error $e');
      rethrow;
    }
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    final file = File('$path/bmi_data.txt');
    if (!await file.exists()) {
      await file.create();
    }
    return file;
  }

  Future<void> deleteAll() async {
    final file = await _localFile;
    await file.delete();
  }

  Future<void> addBmi(BmiLokalSpeicher bmi) async {
    final List<BmiLokalSpeicher> bmiList = await getBmiList();
    bmiList.add(bmi);
    final String data = jsonEncode(bmiList.map((e) => e.toMap()).toList());
    final file = await _localFile;
    await file.writeAsString(data);
  }

  Future<List<BmiLokalSpeicher>> getBmiList() async {
    // await Future.delayed(const Duration(seconds: 2));
    try {
      final file = await _localFile;
      String bmiJson = await file.readAsString();
      final List<BmiLokalSpeicher> bmiList = [];
      final List<dynamic> bmiMapList = jsonDecode(bmiJson);

      for (final Map<String, dynamic> bmiMap in bmiMapList.cast<Map<String, dynamic>>()) {
        bmiList.add(BmiLokalSpeicher.fromJson(bmiMap));
      }

      return bmiList;
    } catch (e) {
      return [];
    }
  }
}
