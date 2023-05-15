
import 'dart:io';

int findMaximum(List<int> num){
  
  int max=num[0];

  for(int i=0;i<num.length;i++){
    if(num[i]>max){
      max=num[i];
    }
  }
  return max;
}


void main(){
  stdout.write('Enter a list of integers: ');

  List<String>numbers;
  String nums=stdin.readLineSync()!;

  numbers=nums.split(" ");

  List<int> numbs=[];

  for(String x in numbers){
    numbs.add(int.parse(x));
  }

  print("\nYour list: $numbs");
  
  int max=findMaximum(numbs);

  print("\nMax number from this list: $max\n");


}