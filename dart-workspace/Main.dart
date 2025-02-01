void main(){
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
}