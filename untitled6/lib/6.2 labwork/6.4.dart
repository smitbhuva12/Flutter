import 'dart:io';

class Item {
  int itemNumber;
  String itemName;
  int quantity;
  double tax;
  double discount;

  // Constructor
  Item(this.itemNumber, this.itemName, this.quantity, this.tax, this.discount);
}

void main() {
  List<Item> items = [];

  // Function to verify user id and password
  bool verifyUser(String userId, String password) {
    // For simplicity, hardcoding user id and password here
    const String correctUserId = 'admin';
    const String correctPassword = 'password';

    return userId == correctUserId && password == correctPassword;
  }

  // Function to add item records
  void addItemRecord() {
    for (int i = 0; i < 3; i++) {
      print('Enter details for item ${i + 1}:');
      print('Enter item number:');
      int itemNumber = int.parse(stdin.readLineSync()!);
      print('Enter item name:');
      String itemName = stdin.readLineSync()!;
      print('Enter quantity:');
      int quantity = int.parse(stdin.readLineSync()!);
      print('Enter tax:');
      double tax = double.parse(stdin.readLineSync()!);
      print('Enter discount:');
      double discount = double.parse(stdin.readLineSync()!);

      items.add(Item(itemNumber, itemName, quantity, tax, discount));
    }
  }

  // Function to display all records in ascending order of item number
  void displayAllRecords() {
    // Sort items by item number
    items.sort((a, b) => a.itemNumber.compareTo(b.itemNumber));

    print('All records in ascending order of item number:');
    for (var item in items) {
      print('Item Number: ${item.itemNumber}');
      print('Item Name: ${item.itemName}');
      print('Quantity: ${item.quantity}');
      print('Tax: ${item.tax}');
      print('Discount: ${item.discount}');
      print('------------------');
    }
  }

  // Verify user
  print('Enter user id:');
  String userId = stdin.readLineSync()!;
  print('Enter password:');
  String password = stdin.readLineSync()!;
  bool isAuthenticated = verifyUser(userId, password);

  if (isAuthenticated) {
    // Adding item records
    addItemRecord();

    // Displaying all records
    displayAllRecords();
  } else {
    print('Authentication failed. Access denied.');
  }
}
