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
        name: "name1",
        imgURL: 'https://rukminim1.flixcart.com/image/332/398/l0sgyvk0/cap/6/d/2/free-casual-cap-polo-original-imagchxw8dyet3zu.jpeg?q=50'
    ),
    Category(
        name: "name1",
        imgURL: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRQKRvFbmi35rxK7A44h8FtG_KSYSgURCwUhE31reqebWpWlOYT03aML7Oiu5-C4O456g&usqp=CAU'
    ),
    Category(
        name: "name1",
        imgURL: 'https://cdn.shopify.com/s/files/1/0648/4531/6322/products/f809786cbc72de2417982827da4ad379.jpg?v=1653537739&width=1920'
    ),
    Category(
        name: "name1",
        imgURL: 'https://magiclink.speedsize-aws.com/80108e9c-8026-45f2-a6ba-296e20837a59/https://neweracap.ph/__resources/webdata/images/collaborations/7_home_.png/mxw_640,f_auto'
    ),
    Category(
        name: "name1",
        imgURL: 'https://cdn.shopify.com/s/files/1/0507/5009/5551/products/St.-Catharines-Stompers-HOMETOWN-COLLECTION-New-Era-59Fifty-Fitted-Hat-_BLACK-PINE-NEEDLE-GREEN-NEW-OLIVE-Under-Brim_-1_1024x1024.jpg?v=1663188179'
    ),
    Category(
        name: "name1",
        imgURL: 'https://i.pinimg.com/236x/93/a9/41/93a94139709d4ba043618670713e1277.jpg'
    )
  ];


}