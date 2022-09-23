import 'package:capmart/models/category_model.dart';
import 'package:capmart/models/models.dart';
import 'package:capmart/screens/home/homescreen.dart';
import 'package:capmart/screens/screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/cart/cart_screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print("this is route: ${settings.name}");

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case CartScreen.routename:
        return CartScreen.route();
      case WishlistScreen.routename:
        return WishlistScreen.route();
      case CatalogScreen.routename:
        return CatalogScreen.route(category: settings.arguments as Category);
      case ProductScreen.routename:
        return ProductScreen.route(product: settings.arguments as Product);
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: RouteSettings(name: "/error"),
      builder: (_) => Scaffold(
        appBar: AppBar(title: Text('Error')),
      ),
    );
  }
}
