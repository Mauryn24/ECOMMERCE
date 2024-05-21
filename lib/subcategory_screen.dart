import 'package:flutter/material.dart';
import './product_detail_screen.dart';
import './utils.dart';

class SubcategoryScreen extends StatelessWidget {
  final String category;
  final String subcategory;

  const SubcategoryScreen(
      {Key? key, required this.category, required this.subcategory})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Find products based on the selected subcategory
    final products = findProductsBySubcategory(category, subcategory);

    return Scaffold(
      appBar: AppBar(
        title: Text(subcategory),
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
                  builder: (context) =>
                      ProductDetailScreen(product: products[index]),
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
                      products[index]['name'],
                      style: const TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      products[index]['price'],
                      style: const TextStyle(fontSize: 16.0),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      products[index]['stock'],
                      style:
                          const TextStyle(fontSize: 14.0, color: Colors.grey),
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
