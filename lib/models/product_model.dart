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
        name: "name1",
        imgURL: 'https://rukminim1.flixcart.com/image/332/398/l0sgyvk0/cap/6/d/2/free-casual-cap-polo-original-imagchxw8dyet3zu.jpeg?q=50',
        category: '',
        price: '800',
        isRecommended: true,
        isPopular : false
    ),
    Product(
        name: "name1",
        imgURL: 'https://cdn.shopify.com/s/files/1/0507/5009/5551/products/St.-Catharines-Stompers-HOMETOWN-COLLECTION-New-Era-59Fifty-Fitted-Hat-_BLACK-PINE-NEEDLE-GREEN-NEW-OLIVE-Under-Brim_-1_1024x1024.jpg?v=1663188179',
        category: '',
        price: '1200',
        isRecommended: true,
        isPopular : false
    ),
    Product(
        name: "name1",
        imgURL: 'https://i.pinimg.com/236x/93/a9/41/93a94139709d4ba043618670713e1277.jpg',
        category: '',
        price: '1500',
        isRecommended: true,
        isPopular : false
    ),
    Product(
        name: "name1",
        imgURL: 'https://cdn.shopify.com/s/files/1/0648/4531/6322/products/f809786cbc72de2417982827da4ad379.jpg?v=1653537739&width=1920',
        category: '',
        price: '1200',
        isRecommended: true,
        isPopular : true
    ),
    Product(
        name: "name1",
        imgURL: 'https://rukminim1.flixcart.com/image/332/398/l0sgyvk0/cap/6/d/2/free-casual-cap-polo-original-imagchxw8dyet3zu.jpeg?q=50',
        category: '',
        price: '1250',
        isRecommended: false,
        isPopular : true
    ),
    Product(
        name: "name1",
        imgURL: 'https://rukminim1.flixcart.com/image/332/398/l0sgyvk0/cap/6/d/2/free-casual-cap-polo-original-imagchxw8dyet3zu.jpeg?q=50',
        category: '',
        price: '1100',
        isRecommended: false,
        isPopular : false
    ),
  ];


}