class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  double find_total_cost() {
    return price * quantity;
  }
}

void main() {
  Product my_product = Product('Bag', 500, 3);
  print(my_product.find_total_cost());
}
