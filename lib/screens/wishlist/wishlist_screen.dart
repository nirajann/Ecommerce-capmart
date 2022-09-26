import 'package:capmart/blocs/wishlist/wishlist_bloc.dart';
import 'package:capmart/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../models/product_model.dart';

class WishlistScreen extends StatelessWidget {
  static const String routename = '/Wishlist';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routename),
      builder: (_) => WishlistScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Whishlist",
      ),
      bottomNavigationBar: customnavbar(),
      body: BlocBuilder<WishlistBloc, WishlistState>(
        builder: (context, state) {
          if(state is WishlistLoading){
            return Center(child: CircularProgressIndicator(),);

          }
          if(state is WishlistLoaded){
            return GridView.builder(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 16.0,
              ), // EdgeInsets.symmetric
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, childAspectRatio: 2.4), // SliverGridDeleg
              itemCount: state.wishlist.products.length,
              itemBuilder: (BuildContext context, int index) {
                return Center(
                  child: ProductCard(
                    product: state.wishlist.products[index],
                    widthFactor: 1.1,
                    isWishlist: true,
                  ),
                );
              },
            );
          }
            else{
              return Text('something went wrong');
          }
          }
      ),
    );
  }
}
