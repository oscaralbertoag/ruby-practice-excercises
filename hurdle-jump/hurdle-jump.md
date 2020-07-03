# Hurdle Jump

Create a function that takes an array of hurdle heights and a jumper's jump height, and determine whether or not the hurdler can clear all the hurdles

A hurdler can clear a hurdle if their jump height is greater than or equal to the hurdle height.

## Examples
```
hurdle_jump([1, 2, 3, 4, 5], 5) ➞ true

hurdle_jump([5, 5, 3, 4, 5], 3) ➞ false

hurdle_jump([5, 4, 5, 6], 10) ➞ true

hurdle_jump([1, 2, 1], 1) ➞ false
```

## Notes

* Return true for the edge case of an empty array of hurdles. (Zero hurdles means that any jump height can clear them).

## Run the tests
To ensure all use cases are covered, run:
```bash
ruby spec/hurdle_jump_spec.rb -f d
```