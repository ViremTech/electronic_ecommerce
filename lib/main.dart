import 'package:electronic_ecommerce/components/theme.dart';
import 'package:electronic_ecommerce/models/shopModel.dart';
import 'package:electronic_ecommerce/pages/cart_page.dart';

import 'package:electronic_ecommerce/pages/home_page.dart';
import 'package:electronic_ecommerce/pages/intropage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shopmodel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: black,
          surface: Colors.grey.shade100,
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Intropage(),
        '/homepage': (context) => const HomePage(),
        '/cartpage': (context) => const CartPage(),
      },
    );
  }
}
