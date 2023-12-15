// You are given a list of students and their corresponding grades. Implement a Dart program that uses a map to store the student names as keys and their grades as values. The program should allow the user to enter a student's name and display their grade. If the student is not found, the program should display an appropriate error message.
import 'dart:io';

void main() {
// creat a student map
  Map<String, String> studentinfo = {'asif': 'A', 'kashif': 'B', 'arslan': 'C'};
  // taking input frome the user
  print("enter your name with small latter");
  String name = stdin.readLineSync()!;
  // checking the name are present in he map
  if (studentinfo.containsKey(name)) {
    print("your gread is:  ${studentinfo}");
  } else {
    print("appropriate error");
  }
}
