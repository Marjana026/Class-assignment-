import 'package:flutter/material.dart';
import 'firstPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'THE BODY SHOP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ProductDetailPage(
        productName: 'Strawberry Body Mist',
        productImage: 'https://www.banglashoppers.com/media/catalog/product/cache/323f12c99b230d9cbd71d949e06824a6/t/h/the-body-shop---strawberry-body-mist---100ml-_france_-03.jpg',
        productPrice: 22.39, // Replace with your product's actual price
        productDescription: 'Spritz on this strawberry scented body mist for long lasting fruitiness.Infused with cold-pressed strawberry seed oil and sugarcane essence'
            '*Body spray'
            '*Ultra-fine mist'
            '*Delicious fruity scent'
            '*long lasting freshness'
            '*Cold-pressed strawberry seed oil'
            '*Community Trade sugarcane essence from Brazil',
      ),
    );
  }
}
//learing flutter
//for sd lab
//with dart