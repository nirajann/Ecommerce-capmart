import 'package:capmart/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../models/category_model.dart';
import '../../models/product_model.dart';


class CatalogScreen extends StatelessWidget {
  static const String routename = '/catalog';

  static Route route({required Category category}){
    return MaterialPageRoute(
      settings: RouteSettings(name: routename),
      builder: (_) => CatalogScreen(category: category,),
    );
  }

  final Category category;

  const CatalogScreen({required this.category});

  @override
  Widget build(BuildContext context) {
    final List<Product> categoryProduct = Product.products.where((product) => product.category == category.name).toList();

    return Scaffold(
      appBar: CustomAppBar(
        title: category.name,
      ),
      bottomNavigationBar: customnavbar(),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 16.0,),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1.15),
          itemCount: categoryProduct.length,
          itemBuilder: (BuildContext context, int index){
            return Center(
              child: ProductCard(
                product: categoryProduct[index],),
            );
          }),

    );
  }
}