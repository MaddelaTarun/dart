# LOOPS

### **1. For Loop**
Used when the number of iterations is known.

```dart
for (int i = 0; i < 5; i++) {
  print("Iteration: $i");
}
```

### **2. While Loop**
Executes as long as the condition is `true`.

```dart
int count = 0;
while (count < 5) {
  print("Count: $count");
  count++;
}
```

### **3. Do-While Loop**
Similar to `while`, but ensures at least one execution.

```dart
int num = 0;
do {
  print("Number: $num");
  num++;
} while (num < 5);
```

### **4. For-In Loop**
Used to iterate over collections like lists.

```dart
List<String> names = ["Alice", "Bob", "Charlie"];
for (var name in names) {
  print(name);
}
```

### **5. For-Each Loop**
Another way to iterate over collections.

```dart
List<int> numbers = [1, 2, 3, 4, 5];
numbers.forEach((num) => print(num));
```

### **Loop Control Statements:**
- `break`: Exits the loop early.
  
  ```dart
  for (int i = 0; i < 5; i++) {
    if (i == 3) break;
    print(i);
  }
  ```

- `continue`: Skips the current iteration and moves to the next.
  
  ```dart
  for (int i = 0; i < 5; i++) {
    if (i == 2) continue;
    print(i);
  }
  ```
