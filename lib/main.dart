import 'package:ecommerce/views/landing_page.dart';
import 'package:ecommerce/views/sign_in.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To You',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const LandingPage(),
      initialRoute: '/landingpage',
      routes: {
        '/landingpage': (context) => const LandingPage(),
        'loginpage': (context) => const SignIn(),
      },
    );
  }
}
