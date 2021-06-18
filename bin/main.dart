Iterable<dynamic> fizzbuzz({bool checkContainNumbers = false}) {
  return 1.to(100).map((number) {
    if (number.isDivisibleBy(15)) return 'FizzBuzz';
    if (number.isDivisibleBy(3) || (number.toString().split('').contains('3') && checkContainNumbers)) return 'Fizz';
    if (number.isDivisibleBy(5)) return 'Buzz';
    return number;
  });
}

extension DivisibleNumber on int {
  List<int> to(int maxRange) => [for (var number = 1; number <= maxRange; number++) number];

  bool isDivisibleBy(int toDivide) => (this % toDivide) == 0;
}
