import 'package:searching_algorithms_uzb/searching_algorithms_uzb.dart';

void main() {
  final List<int> data = List.generate(1000, (i) => i);

  // Binary Search
  final binaryResult = SearchAlgorithms.binarySearch(data, 500);
  print(
      'Binary Search: Index - ${binaryResult.index}, Time - ${binaryResult.timeTaken.inMicroseconds} µs');

  // Linear Search
  final linearResult = SearchAlgorithms.linearSearch(data, 500);
  print(
      'Linear Search: Index - ${linearResult.index}, Time - ${linearResult.timeTaken.inMicroseconds} µs');

  // Jump Search
  final jumpResult = SearchAlgorithms.jumpSearch(data, 500);
  print(
      'Jump Search: Index - ${jumpResult.index}, Time - ${jumpResult.timeTaken.inMicroseconds} µs');
}
