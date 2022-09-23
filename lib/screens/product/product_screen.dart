import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:capmart/widgets/widget.dart';

import '../../models/category_model.dart';
import '../../models/product_model.dart';

class ProductScreen extends StatelessWidget {
  static const String routename = '/product';

  static Route route({required Product product}){
    return MaterialPageRoute(
      settings: RouteSettings(name: routename),
      builder: (_) => ProductScreen(product: product),
    );
  }

  final Product product;

  const ProductScreen({required this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: product.name,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.share),color: Colors.white,),
              IconButton(onPressed: (){}, icon: Icon(Icons.favorite),color: Colors.white,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: (){}, child: Text('ADD TO CART', style: Theme.of(context).textTheme.headline3,))
              
            ],
          ),
        ),
      ),
      body: ListView(
        children:[ CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 1.5,
            viewportFraction: 0.9,
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            enableInfiniteScroll: true,
            autoPlay: true,
          ),
          items: [HeroCarouselCard(product: product,)
          ],
        ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  alignment: Alignment.bottomCenter,
                  color: Colors.black.withAlpha(50),
                ) ,
                Container(
                  margin: const EdgeInsets.all(5.0),
                  width: MediaQuery.of(context).size.width - 10,
                  height: 50,
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(product.name, style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white),),
                        Text('Rs ${product.price}',style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white),)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ExpansionTile(
              initiallyExpanded: true,
                title: Text('Product Information', style: Theme.of(context).textTheme.headline3),
                children: [
                  ListTile(title: Text('this is a cap cap has a map but map cannot last cuz he fapped'
                      ,style: Theme.of(context).textTheme.headline1),)
              ],

        ),
    ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ExpansionTile(
              initiallyExpanded: true,
              title: Text('Delivery Information', style: Theme.of(context).textTheme.headline3),
              children: [
                ListTile(title: Text('this is a cap cap has a map but map cannot last cuz he fapped'
                    ,style: Theme.of(context).textTheme.headline1),)
              ],

            ),
          ),

    ],
      ),
    );
  }
}