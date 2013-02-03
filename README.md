# Function

Functions is a small Ruby library that allows you to create Function objects. These differ
from Proc objects in a few key places.

## Scope
The scope of the block is the class instance, not the surrounding scope where it was
declared.

```ruby
p = Proc.new { 
  self.class
}

p.call # <-- Will return Object 

f = Function.new {
  self.class
}

f.call # <-- Will return Function

```

## Attributes
You can add attributes to the function similar to Python.

```ruby

f = Function.new {
   self.x + self.y
}

f.x = 3
f.y = 4

f.call # <-- returns 7

```

## Contributing
Fork the project, create an issue and make a pull request.