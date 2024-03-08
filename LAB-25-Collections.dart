import 'dart:io';

class Product {
  String name;
  double price;

  Product(this.name, this.price);
}

void main() {
  List<Product> cart = [];

  while (true) {
    print('I. Add item to cart');
    print('II. Remove item from cart');
    print('III. Calculate total price');
    print('Enter your choice:');

    String choice = stdin.readLineSync()!;
    switch (choice) {
      case 'I':
        addToCart(cart);
        break;
      case 'II':
        removeFromCart(cart);
        break;
      case 'III':
        calculateTotalPrice(cart);
        break;
      default:
        print('Invalid choice. Please try again.');
    }
  }
}

void addToCart(List<Product> cart) {
  print('Insert the name of the product:');
  String name = stdin.readLineSync()!;

  print('Insert the price of the product:');
  double price = double.parse(stdin.readLineSync()!);

  print('Insert product ammount:');
  int quantity = int.parse(stdin.readLineSync()!);

  Product product = Product(name, price);
  for (int i = 0; i < quantity; i++) {
    cart.add(product);
  }

  print('Product added to cart successfully.');
}

void removeFromCart(List<Product> cart) {
  if (cart.isEmpty) {
    print('The cart is empty.');
    return;
  }

  print('Enter the index of the item to remove:');
  int index = int.parse(stdin.readLineSync()!);

  if (index >= 0 && index < cart.length) {
    cart.removeAt(index);
    print('Item removed from the cart.');
  } else {
    print('Invalid index. Please try again.');
  }
}

void calculateTotalPrice(List<Product> cart) {
  if (cart.isEmpty) {
    print('The cart is empty.');
    return;
  }

  double totalPrice = 0;
  for (Product product in cart) {
    totalPrice += product.price;
  }

  print('Total price of items in the cart: \$${totalPrice.toStringAsFixed(2)}');
}
