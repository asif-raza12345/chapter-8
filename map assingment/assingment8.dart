// user authentication
//Create a user authentication system using a map to store usernames and passwords. Implement functionality to register new users, authenticate existing users, and change passwords.

import 'dart:io';

void main() {
  Map<String, String> authentication = {};3
  print("enter the number of name thart you are enter");
  int nname = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= nname; i++) {
    print("enter the name that you are enter");
    String name = stdin.readLineSync()!;
    for (int j = i; j <= i; j++) {
      print("enter your password");
      var password = stdin.readLineSync()!;
      authentication[name] = password;
    }
  }
  print("authentication map list is: ${authentication}");
   print("1.authenticate exist");
  print("2.changing password");

  print("enter the number 1or2");
  int number = int.parse(stdin.readLineSync()!);
  if (number == 1) {
    print(authentication);
    // authonticate existing
    print("enter your name");
    String newname = stdin.readLineSync()!;
    print("enter your password");
    String newpassword = stdin.readLineSync()!;
    if (authentication.containsKey(newname) &&
        authentication.containsValue(newpassword)) {
      print("your name and password exist");
    } else {
      print("your name and password does not exist");
    }
  }

  // changing password
  else if (number == 2) {
    print("enter your name");
    String oldname = stdin.readLineSync()!;
    print({"enter your old password"});
    
    if(authentication.containsKey(oldname)){ 
      print("enter your new apassword");
      String newpassword = stdin.readLineSync()!;
      authentication[oldname] = newpassword;
      print(
          "your authenticate map after changing password : ${authentication}");
    } else {
      print("user oldnam  does not exist");
    }
  }
}
