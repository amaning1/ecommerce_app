import 'package:ecommerce/controllers/manage.dart';
import 'package:ecommerce/controllers/products-provider.dart';
import 'package:ecommerce/views/cart-page.dart';
import 'package:ecommerce/views/item-page.dart';
import 'package:ecommerce/views/landing_page.dart';
import 'package:ecommerce/views/liked-products-page.dart';
import 'package:ecommerce/views/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider.value(value: Manage()),
      ChangeNotifierProvider(create: (_)=> ProductProvider())],
      child: MaterialApp(
        title: 'To You',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: const LandingPage(),
        initialRoute: 'landingPage',
        routes: {
          'landingPage': (context) => const LandingPage(),
          'loginPage': (context) => const SignIn(),
          'cartPage': (context) => const CartPage(),
          'likedProductsPage': (context) => const LikedProductsPage(),
          ItemPage.routeName: (context) => const ItemPage(),
        },
      ),
    );
  }
}
