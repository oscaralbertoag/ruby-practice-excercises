# Odd Up, Even Down

Create a function that goes through the array, incrementing (+1) for each odd number and decrementing (-1) for each even number.

## Examples

```
transform([1, 2, 3, 4, 5]) ➞ [2, 1, 4, 3, 6]

transform([3, 3, 4, 3]) ➞ [4, 4, 3, 4]

transform([2, 2, 0, 8, 10]) ➞ [1, 1, -1, 7, 9]
```

## Run the tests
To ensure that all use cases are covered, run:
```bash
ruby spec/odd_up_even_down_spec.rb -f d
```