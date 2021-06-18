Iterable<dynamic> fizzbuzz() {
  return generateNumberRange().map((number) {
    return (number == 3) ? 'Fizz' : number;
  });
}

Iterable<int> generateNumberRange() => [for (var number = 1; number <= 100; number++) number];
