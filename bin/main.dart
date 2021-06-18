Iterable<dynamic> fizzbuzz() {
  return generateNumberRange().map((number) {
    if (number % 15 == 0) return 'FizzBuzz';
    if (number % 3 == 0) return 'Fizz';
    if (number % 5 == 0) return 'Buzz';
    return number;
  });
}

Iterable<int> generateNumberRange() => [for (var number = 1; number <= 100; number++) number];
