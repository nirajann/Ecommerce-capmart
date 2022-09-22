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
          Container(
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 1.5,
                  viewportFraction: 0.9,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                ),
                items: Category.categories.map((Category) => HeroCarousalCard(category: Category)).toList(),
              )
          ),
          SectionTitle(title: "RECOMMENDED CAPS"),
          //product card
          // ProductCard(product: Product.products[0],)
          ProductCarousal(products: Product.products
              .where((product) => product.isRecommended)
              .toList()),
          SectionTitle(title: "MOST POPULAR"),
          //product card
          // ProductCard(product: Product.products[0],)
          ProductCarousal(products: Product.products
              .where((product) => product.isPopular)
              .toList()),

        ],
      ),

    );
  }
}




class HeroCarousalCard extends StatelessWidget {

  final Category category;

  const HeroCarousalCard({required this.category});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 5.0,vertical: 20),
      child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              Image.network(category.imgURL, fit: BoxFit.cover, width: 1000.0),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0)
                      ],

                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    category.name,
                    style: Theme.of(context).textTheme.headline2!.copyWith(color: Colors.white)
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
