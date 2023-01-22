# Builtin Types

## Basic

- Type: The top of the type hierarchy
- Always: Singleton `@` that always evaluates to `true`
- Bool: `true` and/or `false`
- Float: Floating point numbers backed by Rust's `f64`
- Int: Arbitrarily large integers
- Nil: Singleton `nil` object representing the lack of any value
- Str: String `'abc'` or `"abc"`

## Container

- List: Mutable sequence of objects `["a", "b", "c"]`
- Map: Mutable map/dict `{"a": 1, "b": 2}`
- Tuple: Immutable sequence of objects `(1, 2, 3)`

## Function

- BuiltinFunc: A FeInt function implemented in Rust
- Func: A "user" function implemented in FeInt `f = () => nil`
- Closure: An enclosure for a `Func`
- BoundFunc: Binds a function to a `this` object

## Errors

- Err
- ErrType

## Files

- File

## Other

- Cell
- Iterator
- Module
- Prop (currently unused, may not be needed)
