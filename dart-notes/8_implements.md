# Implements

- `implements` is used when a class must follow the structure of another class or interface.
- The new class must define all the methods from the class it implements.
- It does not inherit behavior (functions won’t be automatically available, you must define them again).
  
```dart
abstract class Animal {
  void makeSound();  // A blueprint method (no body)
}

class Dog implements Animal {
  @override
  void makeSound() {
    print("Woof! Woof!");
  }
}

void main() {
  Dog dog = Dog();
  dog.makeSound();  // Outputs: Woof! Woof!
}
```

- The Animal class is **abstract**, meaning it **only provides a structure** (it doesn’t implement any method).
- Dog `implements` Animal, meaning it must provide its own version of `makeSound()`.
- If Dog didn’t define `makeSound()`, it would cause an error because implements forces the class to include everything from the blueprint.