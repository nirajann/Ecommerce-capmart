import 'package:capmart/models/category_model.dart';
import 'package:capmart/models/models.dart';
import 'package:capmart/widgets/widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routename = '/';

  static Route route(){
    return MaterialPageRoute(
        settings: RouteSettings(name: routename),
        builder: (_) => HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CustomAppBar(
        title: "Cap Mart",
      ),
      bottomNavigationBar: customnavbar(),
      body: Column(
        children: [
          CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 1.5,
                  viewportFraction: 0.9,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                ),
                items: Category.categories.map((Category) => HeroCarouselCard(category: Category)).toList(),
              ),
          SectionTitle(title: "RECOMMENDED CAPS"),
          //product card
          // ProductCard(product: Product.products[0],)
          ProductCarousel(products: Product.products
              .where((product) => product.isRecommended)
              .toList()),
          SectionTitle(title: "MOST POPULAR"),
          //product card
          // ProductCard(product: Product.products[0],)
          ProductCarousel(products: Product.products
              .where((product) => product.isPopular)
              .toList()),

        ],
      ),

    );
  }
}


