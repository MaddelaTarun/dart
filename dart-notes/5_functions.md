# FUNCTIONS

### General Function
- This is how functions look
    `<data_type> function_name() {}`

```dart 
void main(){
  showName(); // Your Name
  showName; // no output
}

void showName(){
  print("Your Name");
}
```
- In the above program, we have created a new function named `showName` which has a `void` return type, it means that the function does not return any datatype, not even `null`
- The function `showName()` is being called in the main function which is `void main()`
- If the parantheses`()` are missing while calling in the main function, you get no output

```dart
void main(){
  print(showNum()); // Your Name
}

 int showNum(){
  return 12;
}
```

- This is an example of a function with a return type
- This program returns a function with return type `int`
- If a datatype is not mentioned while creating the function, it is understood that the datatype is `dynamic`

  
```dart
void main(){
  var number = showNum();
  print(number); //12
}

int showNum(){
  return 12;
  print("Hello");
}
```
- Any statement after the return type will not be reached.
---

### Return multiple data types from a function
- Dart 3 added support for **Records**
  - Records are a way to group multiple values together without creating a class.

- Below is an example
  
```dart
void main(){
  print(showNum()); // (12, Hello)
}

(int,String) showNum(){
  return (12,'Hello');
}
```
- To access individual values (`Record fields`) from the return type, we use `getters`

```dart
void main(){
  var number = showNum();
  print(number.$1); // 12
  print(number.$2); // Hello
  print(number.$3); // true
  print(number.$4); // 10.0
  print(number); // (12, Hello, true, 10.0)
}

(int,String,bool,double) showNum(){
  return (12,'Hello',true,10.0);
}
```
---

### Named Arguments

- Before understanding `Named Arguments`, we need to understand what is `Positional Arguments`
  - Consider the following example
    ```dart
        void main(){
          printName("Your name", 12, 170);
        }

        void printName(String name, int age, double height){
          print(name);
          print(age);
          print(height);
        }
    ```
  - In this example, the function `printName()` expects three parameters which are `name`,`age`,`height`
  - This might not seem like a much of an issue for a few parameters, but if the number of parameters passed are increased, it has multiple disadvantages such as
    - **Order Matters** : If you mix up the order, the function will break or give incorrect output.
    - **Hard to remember** : If a function has too many values, it is difficult to remember which value goes where. It also becomes less readable
  - To overcome these problems, `Named Arguments` come into picture.

- Named arguments solve the problems of positional arguments by allowing to specify values by name. Hence, **Order does NOT matter!**
```dart
void main(){
  printName(name: "Your name", age: 19, height: 180);
  printName(age: 20, name: "Your name2", height: 181);
}

void printName({required String name, required int  age, required double height}){
  print(name);
  print(age);
  print(height);
  print("--------");
}

// -------- Output --------

Your name
19
180.0
--------
Your name2
20
181.0
--------

```
- In the above example, the `required` keyword ensures that the specified field must be provided when calling the function. If a `required` field is missing, Dart will throw an error.
- Incase we do not want all the fields to be `required`, we can then use the `?`, we can make the field a `nullable` value
```dart
void main(){
  printName(name: "Your name", age: 19, height: 180);
  printName(name: "Your name2", height: 181);
}

void printName({required String name,int?  age, required double height}) {
  print(name);
  print(age);
  print(height);
  print("--------");
}

// -------- Output --------

Your name
19
180.0
--------
Your name2
null
181.0
--------
```