import 'package:electronic_ecommerce/components/popular.dart';
import 'package:electronic_ecommerce/components/theme.dart';
import 'package:electronic_ecommerce/models/shopModel.dart';
import 'package:electronic_ecommerce/pages/details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 18.0),
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cartpage');
              },
              icon: Icon(Icons.shopping_cart),
              color: Colors.grey[900],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Consumer<Shopmodel>(
            builder: (context, myShop, child) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Best Smart\n',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w300,
                            fontSize: 30,
                            color: black,
                          ),
                        ),
                        TextSpan(
                          text: 'Home Gadgets',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                            fontSize: 30,
                            color: black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 0.1, color: Colors.grey.shade300),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey.shade600,
                      ),
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Most Popular',
                        style: GoogleFonts.montserrat(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'View All >',
                        style: GoogleFonts.montserrat(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.orange,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 400,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.all(20),
                      // scrollDirection: Axis.horizontal,
                      itemCount: myShop.myProduct.length,
                      itemBuilder: (
                        BuildContext context,
                        index,
                      ) {
                        return Popular(
                          product: myShop.myProduct[index],
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Details(
                                  product: myShop.myProduct[index],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recent',
                        style: GoogleFonts.montserrat(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'View All >',
                        style: GoogleFonts.montserrat(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.orange,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: yellow,
                    ),
                    width: 400,
                    child: Center(
                      child: Stack(
                        // fit: StackFit.loose,
                        alignment: Alignment.topRight,
                        children: [
                          Image.asset(
                            'assets/images/virtual.png',
                            height: 300,
                          ),
                          Container(
                            width: 45,
                            padding: const EdgeInsets.all(
                              10,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                100,
                              ),
                              color: Colors.white,
                            ),
                            alignment: const Alignment(
                              0,
                              1,
                            ),
                            child: const Center(
                              child: const Icon(
                                Icons.favorite,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 85.0,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(50.0),
          ),
        ),
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          items: [
            const BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.home,
              ),
            ),
            const BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.shopping_cart,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 2.0,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(30.0)),
                child: const Icon(
                  Icons.qr_code_scanner_rounded,
                ),
              ),
            ),
            const BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.payment,
              ),
            ),
            const BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.person,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
