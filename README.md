Problem Statement
Write a program to convert temperature from Celsius to Fahrenheit.

Input
The input consists of a float number.

Output
Output will be the Fahrenheit value.

Constraints
The program should print the number with exactly two decimal points.
Example:
Enter the temperature in Celsius

Input:
32
Output:
The temperature in Fahrenheit is: 89.60

Answear:

import 'dart:io';

void main()
{
    double Calsius =double.parse(stdin.readLineSync()!);
    double Fahrenheit=(Calsius*9/5)+32;
    print("The temperature in Fahrenheit is: ${Fahrenheit.toStringAsFixed(2)}");
}
