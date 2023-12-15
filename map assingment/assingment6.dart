//Question 6 : Shopping Cart

//    Build a shopping cart program that allows users to add items, remove items, and calculate the total cost of the items in the cart. Use a map to store the item names as keys and their corresponding prices as values.

import 'dart:io';

void mian() {
  Map<String, int> shoppingcar = {'mobile': 2300, 'chair': 1500, 'cap': 200};
  print("the shopping cat consist of");

  print("1.adding new item");
  print("2.removing existing element");
  print("3.updatting the price of existing element");
  print("4.calculate the cost of all value prics");

  // takking a choice number
  print("enter your choice number");
  int number = int.parse(stdin.readLineSync()!);

  // adding a new itam

  if (number == 1) {
    print("adding a new item");
    String addingitem = stdin.readLineSync()!;
    int addingprice = int.parse(stdin.readLineSync()!);
    print("your orignal shoppingcat map list is: ${shoppingcar}");
    if (shoppingcar.containsKey(addingitem)) {
      print("your adding item is already exist in the shopping cart");
    } else {
      shoppingcar[addingitem] = addingprice;
      print("yor adding shopping cart is:  ${shoppingcar}");
      return;
    }
  }

  // remvoing item
  else if (number == 2) {
    print("enter the name of removing item");
    String removingname = stdin.readLineSync()!;
    print("your orignal shoppingcat map list is: ${shoppingcar}");
    if (shoppingcar.containsKey(removingname)) {
      shoppingcar.remove(removingname);
    } else {
      print("your enter name is not exist in the shoppingcart map list");
    }
  }

  // updatting the price

  else if (number == 3) {
    print("enter the name of item");
    String exixtingname = stdin.readLineSync()!;
    print("your orignal shoppingcat map list is: ${shoppingcar}");
    if (shoppingcar.containsKey(exixtingname)) {
      print("enter the updating price of value");
      int updattingprice = int.parse(stdin.readLineSync()!);
      shoppingcar[exixtingname] = updattingprice;
      print("your updatting shopping map list is: ${shoppingcar}");
    } else {
      print("your enter name is not exist in the shoppingcart map list");
    }
  }

  // calculate the cost value

  else if (number == 4) {
    print("your orignal shoppingcat map list is: ${shoppingcar}");
    double cost = 0;
    shoppingcar.forEach((name, price) {
      cost += price;
    });
    double average = cost / shoppingcar.length;
    print("your all price average is:  ${average}");
  } else {
    print("your number is out of choice tankhs");
  }
}
