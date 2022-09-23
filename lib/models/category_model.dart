import 'package:equatable/equatable.dart';

class Category extends Equatable {

  final String name;
  final String imgURL;

  const Category({

    required this.name,
    required this.imgURL

  });


  @override
  // TODO: implement props
  List<Object?> get props => [name, imgURL];

  static List<Category> categories = [
    Category(
        name: "Baseball Caps",
        imgURL: 'https://th-thumbnailer.cdn-si-edu.com/R8zXPSSeXqE7HFvn7Icv1NnR-6s=/fit-in/1600x0/https://tf-cmsv2-smithsonianmag-media.s3.amazonaws.com/filer/14/55/145500e8-ef9e-4d39-bbeb-965d1de2794f/baseballopener_copy.jpg'
    ),
    Category(
        name: "Trucker Caps",
        imgURL: 'https://www.bfgcdn.com/1500_1500_90/204-1695-3611/patagonia-kids-trucker-hat-cap.jpg'
    ),
    Category(
        name: "Dad Caps",
        imgURL: 'https://www.thestudio.com/wp-content/uploads/2022/04/Custom-Dad-Hats-Header.webp'
    ),
    Category(
        name: "Bucket Hats",
        imgURL: 'https://static-01.daraz.com.np/p/c19fe2985ec604821498f3d7acceb923.jpg'
    ),
    Category(
        name: "Snapback Caps",
        imgURL: 'https://backyarddesign.de/wp-content/uploads/2019/04/Backyard-Design-Logo-Snapback-Cap-Motocross-MX-Schwarz-Red-Black-Red-BYD.png'
    ),
    Category(
    name: "Kids Caps",
    imgURL: 'https://www.soulbuddycaps.com/wp-content/uploads/soulbuddy-kids-cap-mintgruen-front-600x600.jpg'
    ),
    Category(
    name: "Paparazzi",
    imgURL: 'https://cdn.shopify.com/s/files/1/1775/0513/products/53192a6d-a0bd-5cb2-9187-13f6cca9b2f3_560x.jpg?v=1566245813'
    ),
    Category(
        name: "Flipped Kids Caps",
        imgURL: 'https://cdn.shopify.com/s/files/1/0661/7423/products/flipped-kids-cap-right.jpg?v=1615535162'
    ),
    Category(
        name: "Beanies",
        imgURL: 'https://bartlettsfarm.com/wp-content/uploads/2020/01/Beanie-WS.jpg'
    )
  ];


}