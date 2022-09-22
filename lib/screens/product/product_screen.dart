import 'package:capmart/widgets/widget.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  static const String routename = '/product';

  static Route route(){
    return MaterialPageRoute(
      settings: RouteSettings(name: routename),
      builder: (_) => ProductScreen(),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Product",
      ),
      bottomNavigationBar: customnavbar(),
    );
  }
}