import 'package:equatable/equatable.dart';

class Product extends Equatable{
  final String name;
  final String category;
  final String imgURL;
  final String price;
  final bool isRecommended;
  final bool isPopular;

  const Product({
    required this.name,
    required this.category,
    required this.imgURL,
    required this.price,
    required this.isRecommended,
    required this.isPopular
  });

  @override
  List<Object?> get props => [name,category,imgURL,price,isRecommended,isPopular];

  static List<Product> products = [
    Product(
        name: "Beanies Pair",
        imgURL: 'https://bartlettsfarm.com/wp-content/uploads/2020/01/Beanie-WS.jpg',
        category: 'Beanies',
        price: '800',
        isRecommended: true,
        isPopular : false
    ),
    Product(
        name: "Trucker Caps",
        imgURL: 'https://www.bfgcdn.com/1500_1500_90/204-1695-3611/patagonia-kids-trucker-hat-cap.jpg',
        category: 'Trucker Caps',
        price: '1200',
        isRecommended: true,
        isPopular : false
    ),
    Product(
        name: "FURTALK Beanie",
        imgURL: 'https://m.media-amazon.com/images/I/71QQ9v6iTaL._AC_UX342_.jpg',
        category: 'Beanies',
        price: '1500',
        isRecommended: true,
        isPopular : false
    ),
    Product(
        name: "Lakers Baseball Caps",
        imgURL: 'https://www.elverys.ie/medias/C1-000000000001129984-592Wx592H?context=bWFzdGVyfGltYWdlc3w3MjE2NHxpbWFnZS9qcGVnfGgyYy9oZmYvMTA3MTAzNzc2NjA0NDYvQzFfMDAwMDAwMDAwMDAxMTI5OTg0XzU5Mld4NTkySHw4M2UxNTM4NDAxZjA1YmNlM2Y2YzYyMDZhZWE3ZmNiNTVmMzE3YTM2OWRlOTllMDJkY2I3YjZjZDY1N2FjOTFi',
        category: 'Baseball Caps',
        price: '1200',
        isRecommended: true,
        isPopular : true
    ),
    Product(
        name: "Baseball Cap Suede II ",
        imgURL: 'https://cdn.shopify.com/s/files/1/2987/0758/products/Baseball_Cap_Suede_II-Cap-LDM702003-460201-Dark_Navy_White_800x.jpg?v=1633959869',
        category: 'Baseball Caps',
        price: '1250',
        isRecommended: false,
        isPopular : true
    ),
    Product(
        name: "Cream Trucker Caps",
        imgURL: 'https://lanskeystownsville.com.au/wp-content/uploads/2021/10/Cream-navy.jpeg',
        category: 'Trucker Caps',
        price: '1100',
        isRecommended: false,
        isPopular : false
    ),
    Product(
        name: "Mountain Dads cap",
        imgURL: 'data:image/jpeg;base64,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',
        category: 'Dad Caps',
        price: '1100',
        isRecommended: false,
        isPopular : false
    ),
    Product(
        name: "Plain Bucket Hats",
        imgURL: 'https://d1flfk77wl2xk4.cloudfront.net/Assets/GalleryImage/86/900/L_g0135290086.jpg',
        category: 'Bucket Hats',
        price: '1100',
        isRecommended: false,
        isPopular : false
    ),
    Product(
        name: "NB Bucket Hats",
        imgURL: 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/bucket-hat-1626201817.jpg?crop=0.601xw:1.00xh;0.200xw,0&resize=640:*',
        category: 'Bucket Hats',
        price: '1100',
        isRecommended: false,
        isPopular : true
    ),
  ];



}