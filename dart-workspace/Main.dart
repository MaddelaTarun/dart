void main(){
    String? sampleValue;
    print(sampleValue); // null
    sampleValue = '454 Hello World';
    print(sampleValue.length); // 15
    sampleValue = 'goodmorning';  
    print(sampleValue?.length); 
}