# Farm Problem

In this challenge, a farmer is asking you to tell her how many legs can be counted among all her animals. The farmer breeds three species:

* `chickens` = 2 legs
* `cows` = 4 legs
* `pigs` = 4 legs

The farmer has counted her animals and she gives you a subtotal for each species. You have to implement a function that returns the total number of legs of all the animals.

## Examples
```
count_animal_legs(2, 3, 5) ➞ 36

count_animal_legs(1, 2, 3) ➞ 22

count_animal_legs(5, 2, 8) ➞ 50
```

## Notes

* Don't forget to return the result.
* The order of animals passed is always `count_animal_legs(chickens, cows, pigs)`.
* Remember that the farmer wants to know the total number of legs and not the total number of animals.

## Run Tests
Execute the following command from the `farm-problem` directory to run your tests:
```bash
ruby spec/farm_spec.rb -f d 
```
