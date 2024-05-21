class Utils {
  static List<Map<String, String>> findProductsBySubcategory(String category, String subcategory) {
    // Implement logic to fetch products based on category and subcategory
    // For demonstration, returning a static list of products
    // You can replace this with your actual data retrieval logic
    return [
      {'name': 'Product 1', 'price': '\$100', 'stock': 'In Stock', 'description': 'Description 1'},
      {'name': 'Product 2', 'price': '\$150', 'stock': 'In Stock', 'description': 'Description 2'},
      {'name': 'Product 3', 'price': '\$200', 'stock': 'Out of Stock', 'description': 'Description 3'},
      {'name': 'Product 4', 'price': '\$250', 'stock': 'In Stock', 'description': 'Description 4'},
      {'name': 'Product 5', 'price': '\$300', 'stock': 'In Stock', 'description': 'Description 5'},
    ];
  }
}
