import 'package:test/test.dart';

import '../bin/main.dart';

void main() {
  group('FizzBuzz should', () {
    test('return consecutive numbers from 1 to max value', () {
      expect(1.to(10), [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
    });

    test('return Fizz if number is 3', () {
      expect(fizzbuzz().take(3), [1, 2, 'Fizz']);
    });

    test('return Buzz if number is 5', () {
      expect(fizzbuzz().take(5), [1, 2, 'Fizz', 4, 'Buzz']);
    });

    test('return FizzBuzz if number is 15', () {
      expect(fizzbuzz().skip(12).take(5), [13, 14, 'FizzBuzz', 16, 17]);
    });

    test('returns the correct combination for the first 20 elements', () {
      expect(fizzbuzz().take(20), [
        1,
        2,
        'Fizz',
        4,
        'Buzz',
        'Fizz',
        7,
        8,
        'Fizz',
        'Buzz',
        11,
        'Fizz',
        13,
        14,
        'FizzBuzz',
        16,
        17,
        'Fizz',
        19,
        'Buzz'
      ]);
    });

    test('returns Fizz if number contains a 3', () {
      expect(fizzbuzz(checkContainNumbers: true).take(23), [
        1,
        2,
        'Fizz',
        4,
        'Buzz',
        'Fizz',
        7,
        8,
        'Fizz',
        'Buzz',
        11,
        'Fizz',
        'Fizz',
        14,
        'FizzBuzz',
        16,
        17,
        'Fizz',
        19,
        'Buzz',
        'Fizz',
        22,
        'Fizz'
      ]);
    });
  });
}
