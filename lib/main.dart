import 'package:capmart/blocs/cart/cart_bloc.dart';
import 'package:capmart/blocs/wishlist/wishlist_bloc.dart';
import 'package:capmart/config/app_router.dart';
import 'package:capmart/config/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => WishlistBloc()..add(StartWishlist())),
          BlocProvider(create: (_) => CartBloc()..add(LoadCart())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cap Mart',

        theme: theme(),

        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: HomeScreen.routename,

        home: HomeScreen(),
      ),
    );
  }
}


