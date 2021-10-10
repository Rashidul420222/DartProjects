class Product {
  String? name;
  int? price;

  Product({this.name, this.price});
}

void main() {
  var product = Product(name: 'apple', price: 44);
  print(product.name);
}
