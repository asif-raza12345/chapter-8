// Design a library catalog system using a map. Allow users to add books to the catalog, search for books by title or author, display all books in the catalog, and mark books as borrowed or returned.
import 'dart:io';

void main(List<String> args) {
  //initializing a libruary of books

  Map<String, int> library = {
    "mathamatics": 1,
    "urdu": 2,
    "english": 3,
    "islamiat": 4,
    "computer": 5,
    "arabic": 6,
    "pak study": 7,
    "programming fundamental": 8
  };
  //print the message to the user

  print("your books library is here!");

  //printing the books library

  print(library);

  //create an empty catalogue for borrowing the books from library

  Map<String, int> catalogue = {};

//for loop for adding the books from library to catalogue

  for (int i = 0; i < library.length - 1; i++) {
    //showing this message to user every time

    print("would you like to add books in your catalogue.");
    print("if yes then type yes if no then type no.");

    //store the user choice into this variable

    String userInput = stdin.readLineSync()!;

    //condition if match

    if (userInput == "yes") {
      //if match then show this message to the user

      print("enter the name of books that you want to add in your catalogue ");

      //input the name of book

      String bookName = stdin.readLineSync()!;

      //input the value of book

      int bookvalue = int.parse(stdin.readLineSync()!);

      //checking if this book contains in your library

      if (library.containsKey(bookName)) {
        //if contian then add this book into the catalogue

        catalogue[bookName] = bookvalue;

        //otherwise to the else statment
      } else {
        //print this message to the user

        print("\nyou want to add invalid book in your catalogue");
      }
      //when user enter no then the program will break
    } else if (userInput == "no") {
      break;
    } else {
      print("you enter invalid option");
    }
  }
  //printing the books that you add in your catalogue

  print("your books in your catalogue are:");

  print(catalogue);

  //initializing the count  variable to count the number of books into the catalogue

  int count = 0;

  //empty list to add the books that are borrowed by user

  List myBooks = [];

  //for-each loop for iterating over your catalogue

  catalogue.forEach((key, value) {
    //add books one by one that you enter in catalogue

    myBooks.add(key);

    //every time increment

    count++;
  });
  //print the resultant output

  print("your borrowed ${count} books and their names are :");

  print(myBooks);
}
