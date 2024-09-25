import 'package:electronic_ecommerce/components/theme.dart';
import 'package:electronic_ecommerce/models/products.dart';
import 'package:electronic_ecommerce/models/shopModel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  void removeFromCart(Product product, BuildContext context) {
    final shop = context.read<Shopmodel>();
    shop.removeItem(product);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shopmodel>(
      builder: (context, product, child) {
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.surface,
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            title: Text(
              'My Cart',
              style: GoogleFonts.montserrat(),
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: product.cart.length,
                  itemBuilder: (context, index) {
                    final myProduct = product.cart[index];
                    final productName = myProduct.productName;
                    final myPrice = myProduct.price;
                    return Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey.shade400,
                      ),
                      child: ListTile(
                        title: Text(
                          productName,
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          myPrice,
                          style: GoogleFonts.montserrat(
                            color: Colors.grey.shade900,
                          ),
                        ),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.delete,
                            color: Colors.grey.shade800,
                          ),
                          onPressed: () => removeFromCart(myProduct, context),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) => AlertDialog(
                        content: Text(
                          'Kindly Connect to Payment',
                          style: GoogleFonts.montserrat(),
                        ),
                        actions: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.cancel),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      color: black,
                    ),
                    child: const Center(
                      child: Text(
                        'Pay',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
