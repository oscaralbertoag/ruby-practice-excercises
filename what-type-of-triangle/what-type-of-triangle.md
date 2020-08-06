# What Type Of Triangle

Create a function which returns the type of triangle, given the side lengths. Return the following values if they match the criteria.

* No sides equal: "scalene"
* Two sides equal: "isosceles"
* All sides equal: "equilateral"
* Less or more than 3 sides given: "not a triangle"

## Examples
```bash
get_triangle_type([2, 6, 5]) ➞ "scalene"

get_triangle_type([4, 4, 7]) ➞ "isosceles"

get_triangle_type([8, 8, 8]) ➞ "equilateral"

get_triangle_type([3, 5, 5, 2]) ➞ "not a triangle"
```

## Notes

* You will be given an array of positive integers.

## Run the Tests
To ensure that all use cases are covered, run:
```bash
ruby spec/what_type_of_triangle_spec.rb -f d
```