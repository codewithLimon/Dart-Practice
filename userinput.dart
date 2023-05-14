import 'dart:ffi';
import 'dart:io';

void main(List<String> args) {
  //print a message:
  stdout.write('Enter a string: ');

  // string input
  var a = stdin.readLineSync();
  stdout.write("your string : $a\n");

  // integer input
  stdout.write("Enter an integer value: ");
  int variable1 = int.parse(stdin.readLineSync()!);

  stdout.write("Your integer value: $variable1\n");

  // double input

  stdout.write("Enter a double value: ");
  double variable2 = double.parse(stdin.readLineSync()!);

  stdout.write("Your double value: $variable2\n");

  double sum=variable1+variable2;
  stdout.write("Sum of integer and double value: $sum\n");


  //char input:

  //there's no single character data types in dart, instead we need to extract the character from the string

  stdout.write("Enter the character value: ");
  String string1=stdin.readLineSync()!;
  String char1=string1.substring(0,1);

  stdout.write("Your character value: $char1\n"); 
}
