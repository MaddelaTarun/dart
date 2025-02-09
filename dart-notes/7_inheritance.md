# INHERITANCE
### What is Inheritance?
- Inheritance allows one class to get all the properties and methods from another class.
- This avoids duplicate code.
- The child class can add more methods or modify the parent’s methods.
 ```dart
 class Animal {
   void eat() {
     print("This animal is eating.");
   }
 }
 
 class Dog extends Animal {
   void bark() {
     print("Woof! Woof!");
   }
 }
 
 void main() {
   var dog = Dog();
   dog.eat();  // Outputs: This animal is eating.
   dog.bark(); // Outputs: Woof! Woof!
 }
 ```
### Method Overriding (Changing a Parent Method)
- The child class can modify the behavior of a method using `@override`.

```dart
class Animal {
  void makeSound() {
    print("Some animal sound.");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Meow! Meow!");
  }
}

void main() {
  var cat = Cat();
  cat.makeSound(); // Outputs: Meow! Meow!
}
```