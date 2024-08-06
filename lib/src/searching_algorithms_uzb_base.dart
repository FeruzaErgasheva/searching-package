library search_algorithms;

import 'dart:math';

class SearchResult {
  final int index;
  final Duration timeTaken;

  SearchResult(this.index, this.timeTaken);
}

class SearchAlgorithms {
  static SearchResult binarySearch<T extends Comparable>(List<T> list, T target) {
    final stopwatch = Stopwatch()..start();
    int left = 0, right = list.length - 1;

    while (left <= right) {
      int middle = left + ((right - left) ~/ 2);
      if (list[middle] == target) {
        stopwatch.stop();
        return SearchResult(middle, stopwatch.elapsed);
      } else if (list[middle].compareTo(target) < 0) {
        left = middle + 1;
      } else {
        right = middle - 1;
      }
    }

    stopwatch.stop();
    return SearchResult(-1, stopwatch.elapsed);
  }

  static SearchResult linearSearch<T>(List<T> list, T target) {
    final stopwatch = Stopwatch()..start();

    for (int i = 0; i < list.length; i++) {
      if (list[i] == target) {
        stopwatch.stop();
        return SearchResult(i, stopwatch.elapsed);
      }
    }

    stopwatch.stop();
    return SearchResult(-1, stopwatch.elapsed);
  }

  static SearchResult jumpSearch(List<int> list, int target) {
    final stopwatch = Stopwatch()..start();
    int n = list.length;
    int step = sqrt(n).toInt();
    int prev = 0;

    while (list[min(step, n) - 1] < target) {
      prev = step;
      step += sqrt(n).toInt();
      if (prev >= n) {
        stopwatch.stop();
        return SearchResult(-1, stopwatch.elapsed);
      }
    }

    for (int i = prev; i < min(step, n); i++) {
      if (list[i] == target) {
        stopwatch.stop();
        return SearchResult(i, stopwatch.elapsed);
      }
    }

    stopwatch.stop();
    return SearchResult(-1, stopwatch.elapsed);
  }
}

