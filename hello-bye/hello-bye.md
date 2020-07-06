# Say "Hello" Say "Bye"

Write a function that takes a string name and a number num (either 0 or 1) and return "Hello" + name if num is 1, otherwise return "Bye" + name.

## Examples

```
say_hello_bye("alon", 1) ➞ "Hello Alon"

say_hello_bye("Tomi", 0) ➞ "Bye Tomi"

say_hello_bye("jose", 0) ➞ "Bye Jose"
```

## Notes

* The name you return must be capitalized.

## Run Tests
To ensure all use cases are covered, run:
```bash
ruby spec/hello_bye_spec.rb -f d
```
