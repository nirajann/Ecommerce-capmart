import 'package:capmart/widgets/widget.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  static const String routename = '/cart';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routename),
      builder: (_) => CartScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Cart",
      ),
      bottomNavigationBar: customnavbar(),
    );
  }
}
