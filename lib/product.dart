

class Product {
  final String name;
  final String imageUrl;
  final double price;

  Product({required this.name, required this.imageUrl, required this.price});
}

List<Product> products = [
  Product(name: 'Iphone', imageUrl: 'assets/images/iphone.jpg', price: 600.12),
  Product(name: 'Samsung', imageUrl: 'assets/images/samsung_phone.jpg', price: 500.12),
  Product(name: 'Set of computers', imageUrl: 'assets/images/comps.jpg', price: 3400.12),
  Product(name: 'Macbook', imageUrl: 'assets/images/pc.jpg', price: 1200.12),
  Product(name: 'Speaker', imageUrl: 'assets/images/speaker.jpg', price: 800.12),
  Product(name: 'Headphones', imageUrl: 'assets/images/bluetooth.jpg', price: 200.12),
];

