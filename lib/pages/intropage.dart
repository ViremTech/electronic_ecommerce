import 'package:electronic_ecommerce/util/first_intro.dart';
import 'package:flutter/material.dart';

class Intropage extends StatelessWidget {
  Intropage({super.key});

  // final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FirstIntro(),
    );
  }
}
