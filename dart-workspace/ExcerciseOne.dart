/*
  Develop a program to calculate shipping cost based on the destination zone and the weight of the package
    - If the destination zone is 'XYZ', shipping cost is $5 per kilogram
    - If the destination zone is 'ABC', shipping cost is $7 per kilogram
    - If the destination zone is 'PQR', shipping cost is $10 per kilogram
    - If the destination is not of any of the above, display error
*/

void main(){
  double weight=6,cost=0;
  String destination='PQR';

  switch(destination) {
    case 'XYZ':
      print("Destination is XYZ");
      print("----------------------");
      print('The price before reaching destination XYZ is: \$$cost');
      cost = 5*weight;
      print('The price after reaching destination XYZ is: \$${cost}');
      print("----------------------");
      break;
    case 'ABC':
      print("Destination is ABC");
      print("----------------------");
      print('The price before reaching destination ABC is: \$$cost');
      cost = 7*weight;
      print('The price after reaching destination ABC is: \$${cost}');
      print("----------------------");
      break;
    case 'PQR':
      print("Destination is PQR");
      print("----------------------");
      print('The price before reaching destination PQR is: \$$cost');
      cost = 10*weight;
      print('The price after reaching destination PQR is: \$${cost}');
      print("----------------------");
      break;
    default:
      print("Not a valid destination");
      print("----------------------");
      break;
  }
}
