# Purge and Organize

Given an array of numbers, write a function that returns an array that:

* Has all duplicate elements removed.
* Is sorted from least value to greatest value.

## Examples
```
unique_sort([1, 2, 4, 3]) ➞ [1, 2, 3, 4]

unique_sort([1, 4, 4, 4, 4, 4, 3, 2, 1, 2]) ➞ [1, 2, 3, 4]

unique_sort([6, 7, 3, 2, 1]) ➞ [1, 2, 3, 6, 7]
```

## Run the Tests
To ensure all use cases are covered, run:
```bash
ruby spec/purge_organize_spec.rb -f d
```
