// Implement a Dart program that simulates a phonebook using a map. The program should allow the user to add a new contact (name and phone number), search for a contact by name, update a contact's phone number, and delete a contact. Display appropriate messages after each operation.

import 'dart:io';

void main() {
  Map<String, String> phonebook = {'asif': '0305', 'ali': '0306'};
  print("your phonebook  map list is: ${phonebook}");

  // add a new contact

  print("1.add new number");
  print("2.update number ");
  print("3.delete the exist contact");
  print("4.search the number");
  print("5.exit the programe");

// select a opetion

  print("enter your choice number");
  int number = int.parse(stdin.readLineSync()!);

// adding a new contact

  if (number == 1) {
    print("enter your name as a key ");
    String name = stdin.readLineSync()!;
    print("enter your number as a value");
    String number = stdin.readLineSync()!;
    phonebook[name] = number;
    print("your adding phonebook map list is:  ${phonebook}");

    // updatting the map list
  } else if (number == 2) {
    print("enter the name that are exist in th emap list");
    String name1 = stdin.readLineSync()!;
    if (phonebook.containsKey(name1)) {
      print("enter your new number");
      String number1 = stdin.readLineSync()!;
      phonebook[name1] = number1;
      print("your updating phonebook map list:  ${phonebook}");
    } else {
      print("your name is not exist");
    }
  }

  // deleting a map list

  else if (number == 3) {
    print("enter the name of contact that you are delete");
    String deletingname = stdin.readLineSync()!;
    if (phonebook.containsKey(deletingname)) {
      phonebook.remove(deletingname);
      print("the phonebook maplist after deleting contact: ${phonebook}");
    } else {
      print("your contact does not exist");
    }
  }

  // searching a contact by name

  else if (number == 4) {
    print("enter the name of contact that you find");
    String searchname = stdin.readLineSync()!;
    if (phonebook.containsKey(searchname)) {
      print("your finding number is:  ${phonebook}");
    } else {
      print("your name is not exist ");
    }
  }

  // exit programe

  else if (number == 0) {
    print("programe finished");
  } else {
    print("this number is not avaiable thaks");
  }
}
