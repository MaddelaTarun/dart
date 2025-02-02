# BASICS

```dart
print(3+2); // 5
print('3'+'2'); // 32 (String concatenation), any other operation except plus while stated within quotes, are treated as characters
print('3'*2);

// Dart follows BODMAS
print(75/(5+2));
```

### String Handling
Instead of:

```dart
String greeting = "Hello, World!";
print(greeting);
print(greeting+' Yo'); // NOT RECOMMENDED
```

Use:

```dart
print('$greeting Yo'); // RECOMMENDED
```

### Special Characters
To use the `$` sign:

```dart
print('\$12'); // $12
```

### Multi-line Output
Two cases:

1. Enclose the text within triple single quotes:

   ```dart
   print('''<sample text>
   <another sample text>''');
   ```

2. Use `\n`:

   ```dart
   print('Hello \n World');
   ```
