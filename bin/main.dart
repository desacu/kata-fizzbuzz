Iterable<dynamic> fizzbuzz({bool checkContainsNumbers = false}) {
  return 1.to(100).map((number) {
    if (number.isDivisibleBy(15)) return 'FizzBuzz';
    if (number.isDivisibleBy(3) || (number.contains(3) && checkContainsNumbers)) return 'Fizz';
    if (number.isDivisibleBy(5)) return 'Buzz';
    return number;
  });
}

extension NumberExtension on int {
  List<int> to(int maxRange) => [for (var number = 1; number <= maxRange; number++) number];

  bool isDivisibleBy(int toDivide) => (this % toDivide) == 0;

  bool contains(int number) => toString().contains('$number');
}
