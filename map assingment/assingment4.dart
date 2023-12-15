// Write a Dart program that takes a sentence as input and determines the frequency of each word using a map. The program should display the word and its frequency. Ignore punctuation marks and convert all words to lowercase before counting.
import 'dart:io';

void main(List<String> args) {
  //enter a message to the user

  print("enter your sentence:");

  //store the sentence in this vaiables

  String sentence = stdin.readLineSync()!;

  //convert this sentence to lowercase

  sentence.toLowerCase();

  //remove all the special symbols from this sentence

  sentence.replaceAll(RegExp(r'[^\w\s]'), "");

  //create a list in which we store each word individually in this list

  List myList = sentence.split(" ");

  //create an empty map

  Map myMap = {};

  //for-in loop for treversing over the list

  for (String word in myList) {
    //method to find the frequency of each

    myMap[word] = (myMap[word] ?? 0) + 1;
  }
  //print this statment to the user

  print("\nword\t\tfrequency");
  print("--------------------");

  //for-each loop for printing the word and its frquency

  myMap.forEach((key, value) {
    print("${key}\t\t${value}");
  });
}
