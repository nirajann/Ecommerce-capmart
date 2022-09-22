import 'package:capmart/widgets/widget.dart';
import 'package:flutter/material.dart';

class CatalogScreen extends StatelessWidget {
  static const String routename = '/catalog';

  static Route route(){
    return MaterialPageRoute(
      settings: RouteSettings(name: routename),
      builder: (_) => CatalogScreen(),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Catalog",
      ),
      bottomNavigationBar: customnavbar(),
    );
  }
}