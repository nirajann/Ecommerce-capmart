import 'package:flutter/material.dart';

import '../models/product_model.dart';

class ProductCard extends StatelessWidget {
  final double widthFactor;
  final Product product;
  final bool isWishlist;
  const ProductCard({Key? key, required this.product,this.widthFactor = 2.5,this.isWishlist = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, '/product' , arguments: product);
      },
      child: Stack(children: [
        Container(width: MediaQuery.of(context).size.width / widthFactor,height: 150,child: Image.network(product.imgURL,
          fit: BoxFit.cover,),
        ),

        Positioned(
          top: 60,
          left: 5,
          child: Container(width: MediaQuery.of(context).size.width / 2.5 - 10 ,height: 70,
            decoration: BoxDecoration(color: Colors.black,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(product.name,style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white),
                        ),
                        Text('\Rs ${product.price}',style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white),
                        ),

                      ],
                    ),
                  ),
                  Expanded(
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.add_circle, color: Colors.white,))),
                  isWishlist?  Expanded(
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.delete, color: Colors.white,))): SizedBox(),
                ],
              ),
            ),
          ),
        )
      ],),
    );
  }
}