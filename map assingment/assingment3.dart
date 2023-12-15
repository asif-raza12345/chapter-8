// You are given a list of employees with their respective salaries. Implement a Dart program that uses a map to store the employee names as keys and their salaries as values. The program should calculate and display the average salary of all employees.

import 'dart:io';

void main() {
  Map<String, int> employeeinfo = {
    'arslan': 100,
    'sheraz': 5000,
    'sohile': 3000,
    'saqlain': 600,
  };
  // taling name as input
  print("enter the employee name in small latter ");
  String name = stdin.readLineSync()!;
  // chacking th eemployee nam exist
  if (employeeinfo.containsKey(name)) {
    print("your sallary ids: ${employeeinfo}");
  } else {
    print("employee not exist");
  }

  double totalsallary = 0;
  // Iterate each sallaery in map
  employeeinfo.forEach((name, sallary) {
    totalsallary += sallary;
  });
  double average = totalsallary / employeeinfo.length;
  // display average sallaey
  print("the eaverage of all employee salary:  ${average}");
}
