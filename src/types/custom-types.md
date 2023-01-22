# Custom Types

Custom types are not yet implemented. The proposed implementation will
look something like this (with some details still be worked out):

```
MyType = () =>

    # NOTE: The @ prefix indicates class method.
    @new = (value) =>
        "Creates a new instance of this type."
        this.value = value

    + = (other) =>
        "Overloads the `+` operator for this type."
        MyType(this.value + other.value)

    !! = () =>
        "Returns the bool value of the object, if applicable."
        this.value > 10

    # NOTE: The $ prefix indicates a special method, similar to
    #       dunder methods in Python (e.g., `__str__`)
    $str = () =>
        "Returns the string representation of the object."
        $"{this.value}"

obj1 = MyType.new(1)
obj2 = MyType.new(2)
obj1 + obj2
# -> 3
```
