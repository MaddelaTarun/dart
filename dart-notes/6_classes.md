# CLASSES

### **What is a Class?**  
- A **class** is a **blueprint** for creating objects.  
- Think of a **class** as a **recipe** for baking a cake. The recipe tells you what ingredients (**properties**) and steps (**methods**) you need to follow.  
- When you actually bake a cake using the recipe, that cake is an **object**.  
- Similarly, when we create an **object** from a class, it follows the class's structure.  

### **Why Use Classes?**
- **Code Reusability** → You don’t have to write the same logic multiple times.  
- **Better Organization** → Groups related properties and methods together.  
- **Encapsulation** → Protects and controls access to data.  

### **Basic Example**  
```dart
class Person {
  String name = "John"; // Property (Variable)
  int age = 25; // Property

  void greet() { // Method (Function inside a class)
    print("Hello, my name is $name and I am $age years old.");
  }
}

void main() {
  var person1 = Person(); // Creating an object from the class
  person1.greet(); // Outputs: Hello, my name is John and I am 25 years old.
}
```

#### Breakdown of Code
- `class Person {}` Defines a class named Person.
- `String name = "John"` This is a property (variable) that holds a name.
- `void greet() {}` This is a method (a function inside a class) that prints a greeting.
- `Person person1 = Person()` This creates an object of Person and stores it in person1.
- `person1.greet()` Calls the greet() method.

## Constructors
- A constructor is a special function that runs when an object is created.
- It helps set initial values for properties.

```dart
class Person {
  String name;
  int age;

  // Constructor
  Person(String personName, int personAge) {
    name = personName;
    age = personAge;
  }

  void greet() {
    print("Hello, my name is $name and I am $age years old.");
  }
}

void main() {
  var person1 = Person("Alice", 22); // Pass values when creating an object
  person1.greet(); // Outputs: Hello, my name is Alice and I am 22 years old.
}
```
- `this` is a special keyword in Dart that refers to the current instance (object) of a class.

```dart
class Person {
  String name;
  int age;

  Person(this.name, this.age); // Constructor

  void greet() {
    print("Hello, my name is $name and I am $age years old.");
  }
}

void main() {
  var person1 = Person("Alice", 22); // Pass values when creating an object
  person1.greet(); // Outputs: Hello, my name is Alice and I am 22 years old.
}
```