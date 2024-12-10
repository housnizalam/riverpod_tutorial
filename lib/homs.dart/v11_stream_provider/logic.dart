import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterStreamProvider = StreamProvider<int>((ref) {
  // return Stream.periodic(const Duration(milliseconds: 200), (x) => x + 1).take(100);
  // return Stream.fromIterable(streamList);
  // return streamCounter();
  return periodicList;
});

Stream<int> streamCounter() async* {
  for (var i = 1; i <= 100; i++) {
    await Future.delayed(const Duration(milliseconds: 200));
    yield i;
  }
}

final List<int> streamList = List.generate(100, (index) => index + 1);
final Stream<int> periodicList= Stream.periodic(const Duration(milliseconds: 200),  (int count) => streamList[count % streamList.length],).take(100);
