//   Write a Dart program that takes a list of words as input and counts the frequency of each word using a map. The program should display the word and its frequency in descending order of frequency. If two or more words have the same frequency, they should be displayed in lexicographical (alphabetical) order.

import 'dart:io';

void main() {
  List<String> mylist = [];
  print("enter the number of word that you are enter");
  int number = int.parse(stdin.readLineSync()!);
  for (int i = 0; i <= number; i++) {
    print('enter the word one by one');
    String word = stdin.readLineSync()!;
    mylist.add(word);
  }
  print("my list is: ${mylist}");
  // checking frequency
  // create a empty map
  Map<String, int> wordfrequency = {};
  for (String word in mylist) {
    wordfrequency[word] = (wordfrequency[word] ?? 0) + 1;
  }
  print("the word frequency is : ${wordfrequency}");

  // sorted the entry element in descendingorder
  var sortedentries = wordfrequency.entries.toList()
    ..sort(
      (a, b) => b.value.compareTo(a.value),
    );
  // "wordfrequency in decending order:"
  print("\nword\tfrequency");
  sortedentries.forEach((element) {
    print("${element.key}\t${element.value}");
  });
}
