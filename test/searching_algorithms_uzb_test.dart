import 'package:searching_algorithms_uzb/searching_algorithms_uzb.dart';
import 'package:test/test.dart';




void main() {
  group('Search Algorithms', () {
    final List<int> data = List.generate(1000, (i) => i);

    test('Binary Search - Found', () {
      final result = SearchAlgorithms.binarySearch(data, 500);
      expect(result.index, equals(500));
      expect(result.timeTaken.inMicroseconds, isNonNegative);
    });

    test('Binary Search - Not Found', () {
      final result = SearchAlgorithms.binarySearch(data, 1001);
      expect(result.index, equals(-1));
      expect(result.timeTaken.inMicroseconds, isNonNegative);
    });

    test('Linear Search - Found', () {
      final result = SearchAlgorithms.linearSearch(data, 500);
      expect(result.index, equals(500));
      expect(result.timeTaken.inMicroseconds, isNonNegative);
    });

    test('Linear Search - Not Found', () {
      final result = SearchAlgorithms.linearSearch(data, 1001);
      expect(result.index, equals(-1));
      expect(result.timeTaken.inMicroseconds, isNonNegative);
    });

    test('Jump Search - Found', () {
      final result = SearchAlgorithms.jumpSearch(data, 500);
      expect(result.index, equals(500));
      expect(result.timeTaken.inMicroseconds, isNonNegative);
    });

    test('Jump Search - Not Found', () {
      final result = SearchAlgorithms.jumpSearch(data, 1001);
      expect(result.index, equals(-1));
      expect(result.timeTaken.inMicroseconds, isNonNegative);
    });
  });
}

