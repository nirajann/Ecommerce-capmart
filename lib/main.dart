import 'package:capmart/config/app_router.dart';
import 'package:capmart/config/theme.dart';
import 'package:flutter/material.dart';

import 'screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cap Mart',

      theme: theme(),

      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: HomeScreen.routename,

      home: HomeScreen(),
    );
  }
}


