import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopeasy/my_app.dart';
import 'package:shopeasy/categories_screen.dart';

void main() {
  testWidgets('MyApp UI Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the title is rendered.
    expect(find.text('Shopeasy'), findsOneWidget);

    // Example of testing widget interactions
    // Tap on the icon button with the shopping cart icon
    await tester.tap(find.byIcon(Icons.shopping_cart));
    await tester.pump();

    // Verify that the cart screen is displayed
    expect(find.text('Cart'), findsOneWidget);
  });

  testWidgets('CategoriesScreen UI Test', (WidgetTester tester) async {
    // Example of testing the CategoriesScreen
    await tester.pumpWidget(const MaterialApp(
      home: CategoriesScreen(category: 'Electronics'),
    ));

    // Verify that the category title is rendered
    expect(find.text('Electronics'), findsOneWidget);

    // Example of testing tapping on a grid item
    await tester.tap(find.text('Product 1'));
    await tester.pump();

    // Verify that the product detail screen is displayed
    expect(find.text('Product 1'), findsOneWidget);
  });
}
