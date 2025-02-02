# CONTROL FLOW

## If Statements
### CONTROL STATEMENTS

### Conditional Statements

- Conditional statements allow the execution of different blocks of code based on conditions.

#### `if` Statement
- Executes a block of code if the condition evaluates to `true`.
```dart
int num = 10;
if (num > 0) {
  print("Positive number");
}
```

#### `if-else` Statement
- If the condition is `true`, the first block runs; otherwise, the `else` block executes.
```dart
int num = -5;
if (num > 0) {
  print("Positive number");
} else {
  print("Negative number");
}
```

#### `if-else if-else` Statement
- Checks multiple conditions in sequence, executing the first matching block.
```dart
int num = 0;
if (num > 0) {
  print("Positive number");
} else if (num < 0) {
  print("Negative number");
} else {
  print("Number is zero");
}
```

#### Ternary Operator
- A shorthand for `if-else` conditions.
```dart
int num = 10;
String result = num > 0 ? "Positive" : "Negative";
print(result);
```

---

### Looping Statements

- Loops are used to execute a block of code multiple times.

#### `for` Loop
- Executes a block of code a fixed number of times.
```dart
for (int i = 1; i <= 5; i++) {
  print("Iteration: \$i");
}
```

#### `while` Loop
- Executes the block as long as the condition remains `true`.
```dart
int i = 1;
while (i <= 5) {
  print("Iteration: \$i");
  i++;
}
```

#### `do-while` Loop
- Similar to `while`, but ensures the loop runs at least once.
```dart
int i = 1;
do {
  print("Iteration: \$i");
  i++;
} while (i <= 5);
```

---

### Jump Statements

- Jump statements control the flow within loops.

#### `break` Statement
- Exits the loop when a certain condition is met.
```dart
for (int i = 1; i <= 5; i++) {
  if (i == 3) {
    break;
  }
  print("Iteration: \$i");
}
```

#### `continue` Statement
- Skips the current iteration and moves to the next.
```dart
for (int i = 1; i <= 5; i++) {
  if (i == 3) {
    continue;
  }
  print("Iteration: \$i");
}
```

---

### `switch` Statement

- The `switch` statement allows multiple conditional branches based on a variable's value.
```dart
String grade = "A";
switch (grade) {
  case "A":
    print("Excellent");
    break;
  case "B":
    print("Good");
    break;
  case "C":
    print("Average");
    break;
  default:
    print("Invalid Grade");
}
```
- This is often used as an alternative to multiple `if-else` conditions when checking a single variable against multiple values.
- **Switch did not allow using relational operators like (==,!=) until Dart 3**

```dart
  int age = 20;
  String value = 'hi3';

  switch(value) {
    case 'hi' when age>=20:
      print("Both conditions satisfied");
    case 'hi2':
      print("hi2");
    default:
      print("default in the switch case");
  }
```