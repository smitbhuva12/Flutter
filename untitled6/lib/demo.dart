import 'dart:io';

class MenuItem {
  String name;
  double price;

  MenuItem(this.name, this.price);
}

class HotelMenu {
  List<MenuItem> menuItems = [];

  void addItem(String name, double price) {
    menuItems.add(MenuItem(name, price));
  }

  void displayMenu() {
    print("\nMenu:");
    menuItems.asMap().forEach((index, item) {
      print("${index + 1}. ${item.name} - \$${item.price.toStringAsFixed(2)}");
    });
  }

  double getPrice(int index) {
    return menuItems[index].price;
  }
}

class BookingSystem {
  HotelMenu menu = HotelMenu();
  List<int> selectedItems = [];

  void addMenuItems() {
    menu.addItem("Burger", 10.99);
    menu.addItem("Pizza", 12.99);
    menu.addItem("Pasta", 8.99);
    menu.addItem("Salad", 6.99);
  }

  void displayMenu() {
    menu.displayMenu();
  }

  void selectItem(int index) {
    selectedItems.add(index);
  }

  double calculateTotal() {
    double total = 0;
    selectedItems.forEach((index) {
      total += menu.getPrice(index);
    });
    return total;
  }
}

void main() {
  BookingSystem bookingSystem = BookingSystem();
  bookingSystem.addMenuItems();

  bool continueOrdering = true;

  while (continueOrdering) {
    bookingSystem.displayMenu();

    stdout.write("\nEnter the number of the item you want to order (0 to finish): ");
    int userInput = int.parse(stdin.readLineSync()!);

    if (userInput == 0) {
      continueOrdering = false;
      break;
    }

    if (userInput >= 1 && userInput <= bookingSystem.menu.menuItems.length) {
      bookingSystem.selectItem(userInput - 1);
      print("Item added to cart.");
    } else {
      print("Invalid input. Please enter a valid item number.");
    }
  }

  double total = bookingSystem.calculateTotal();
  print("\nTotal amount: \$${total.toStringAsFixed(2)}");
}
gi t