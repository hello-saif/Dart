//Take a list, say for example this one:
//a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
//and write a program that prints out
// all the elements of the list that
// are less than 5.
import 'dart:io';

void main ()
{
  // print("enter the list number:");
  // int a=int.parse(stdin.readLineSync()!);
  var a =[1,1,2,3,5,8,13,21,34,55,89];
  var i;
  for(i in a)
  {
    if(i<5)
    {
      print(i);
    }
  }

}