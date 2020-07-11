# Broken Bridge

Create a function which validates whether a bridge is safe to walk on (i.e. has no gaps in it to fall through).

## Examples
```
is_safe_bridge("####") ➞ true

is_safe_bridge("## ####") ➞ false

is_safe_bridge("#") ➞ true
```

## Notes

You can expect the bridge's ends connecting it to its surrounding.

## Run the Tests
To ensure that all use cases are covered, run:
```bash
ruby spec/broken_bridge_spec.rb -f d
```