import 'dart:io';
import 'dart:isolate';

void main() {
  print("Enter your first name");
  String? input1 = stdin.readLineSync()!;
  print("Enter your second name");
  String? input2 = stdin.readLineSync()!;
  print(input1[0].toUpperCase() +
      input1.substring(1) +
      " " +
      input2[0].toUpperCase() +
      input2.substring(1));
}
