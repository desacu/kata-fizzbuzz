import 'package:test/test.dart';

import '../bin/main.dart';

void main() {
  group('FizzBuzz should', () {
    test('return consecutive numbers from 1 to max value', () {
      expect(generateNumberRange().take(10), [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
    });

    test('return Fizz if number is 3', () {
      expect(fizzbuzz().take(4), [1, 2, 'Fizz', 4]);
    });

    test('return Buzz if number is 5', () {
      expect(fizzbuzz().take(10), [1, 2, 'Fizz', 4, 'Buzz', 6, 7, 8, 9, 10]);
    });

    test('return FizzBuzz if number is 15', () {
      expect(fizzbuzz().take(15), [1, 2, 'Fizz', 4, 'Buzz', 6, 7, 8, 9, 10, 11, 12, 13, 14, 'FizzBuzz']);
    });
  });
}
