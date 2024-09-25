import 'package:electronic_ecommerce/models/products.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Popular extends StatelessWidget {
  const Popular({super.key, required this.product, required this.onTap});
  final Product product;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Container(
          width: 250,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              20.0,
            ),
            color: Colors.grey.shade200,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: product.backColor,
                ),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Image.asset(
                      product.imagePath,
                      height: 200,
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
                      child: const Center(
                        child: Icon(
                          Icons.favorite,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    size: 15.0,
                    color: Colors.yellow,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text("${product.rating}"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    product.productName,
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                      color: Colors.yellow,
                    ),
                    child: const Icon(
                      Icons.add,
                    ),
                  ),
                ],
              ),
              Text(
                '\$${product.price}',
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
