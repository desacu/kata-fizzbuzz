import 'package:test/test.dart';

import '../bin/main.dart';

void main() {
  group(
      'FizzBuzz should',
      () => {
            test('return consecutive numbers from 1 to max value', () {
              expect(fizzbuzz(10), ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10']);
            })
          });
}
