# True Ones, False Zeros

Create a function which returns an array of booleans, from a given number. Iterating through the number one digit at a time, append true if the digit is 1 and false if it is 0.

## Examples
```
integer_boolean("100101") ➞ [true, false, false, true, false, true]

integer_boolean("10") ➞ [true, false]

integer_boolean("001") ➞ [false, false, true]
```

## Notes

Expect numbers with 0 and 1 only.

## Run the Tests
To ensure all use cases are covered, run:
```bash
ruby spec/true_ones_false_zeros.rb -f d
```