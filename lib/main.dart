import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
import 'theme.dart';
import 'product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkTheme = false;
// This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'TechDevices Store',
      theme: isDarkTheme ? AppThemes.darkTheme : AppThemes.lightTheme,
      home: CatalogPage(
        toggleTheme: () {
          setState(() {
            isDarkTheme = !isDarkTheme;
          });
        },
      ),
    );
  }
}
// Path: lib/product.dart and animate the opacity of the product card
class CatalogPage extends StatelessWidget {
  final VoidCallback toggleTheme;

  const CatalogPage({super.key, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TechDevices Store'),
        titleTextStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_6),
            onPressed: toggleTheme,
          )
        ],
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return GestureDetector(
            onTap: () {
              _showProductDialog(context, product.name);
            },
            child: AnimatedOpacity(
            opacity: 1.0,
            duration: const Duration(seconds: 1),
            child: Card(
              elevation: 4,
              margin: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Image.asset(product.imageUrl, height: 100, width: 100),
                  const SizedBox(height: 8),
                  Text(product.name),
                  Text('\$${product.price.toStringAsFixed(2)}'),
                ],
              ),
            ),
          ),
          );
        },
      ),
    );
  }
// This method shows a dialog when a product card is tapped, displaying the product name, and a close button.
  void _showProductDialog(BuildContext context, String productName) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text('You tapped on $productName'),
          actions: <Widget>[
            TextButton(
              child: const Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
