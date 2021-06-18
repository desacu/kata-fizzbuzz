Iterable<dynamic> fizzbuzz() {
  return generateNumberRange().map((number) {
    if (number == 3) return 'Fizz';
    if (number == 5) return 'Buzz';
    return number;
  });
}

Iterable<int> generateNumberRange() => [for (var number = 1; number <= 100; number++) number];
