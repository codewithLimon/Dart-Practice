import 'dart:io';

class Human{
  Human(){
    stdout.write("Masud is a Human\n");
  }

   void call_me(String name){
    stdout.write("Hello $name");
  }
}



void main(){
  var h=new Human();
  h.call_me("Limon\n");

  var a=null;
  stdout.write(a);

  print("\n10");

  BigInt bigInt=BigInt.parse('653532452394532453434324323234324');

  print(bigInt);

  num percentage=99.99;
  print("$percentage \n");

  
}