import 'package:capmart/widgets/widget.dart';
import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  static const String routename = '/Wishlist';

  static Route route(){
    return MaterialPageRoute(
      settings: RouteSettings(name: routename),
      builder: (_) => WishlistScreen(),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Whishlist",
      ),
      bottomNavigationBar: customnavbar(),
    );
  }
}