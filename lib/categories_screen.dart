import 'package:flutter/material.dart';
import 'product_detail_screen.dart';

class CategoriesScreen extends StatelessWidget {
  final String category;

  const CategoriesScreen({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> products = [
      {'name': 'Product 1', 'price': '\$100', 'stock': 'In Stock', 'description': 'Description 1'},
      {'name': 'Product 2', 'price': '\$150', 'stock': 'In Stock', 'description': 'Description 2'},
      {'name': 'Product 3', 'price': '\$200', 'stock': 'Out of Stock', 'description': 'Description 3'},
      {'name': 'Product 4', 'price': '\$250', 'stock': 'In Stock', 'description': 'Description 4'},
      {'name': 'Product 5', 'price': '\$300', 'stock': 'In Stock', 'description': 'Description 5'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(category),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 1.0,
        ),
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(product: products[index]),
                ),
              );
            },
            child: Card(
              elevation: 3.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      products[index]['name']!,
                      style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      products[index]['price']!,
                      style: const TextStyle(fontSize: 16.0),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      products[index]['stock']!,
                      style: const TextStyle(fontSize: 14.0, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
