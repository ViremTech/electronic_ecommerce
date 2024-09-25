import 'package:electronic_ecommerce/components/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstIntro extends StatelessWidget {
  const FirstIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            green,
            pink,
          ],
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 80.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                textAlign: TextAlign.center,
                'Your ideal \nelectronics \nstore',
                style: GoogleFonts.montserrat(
                  fontSize: 48,
                  color: black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Image.asset(
                'assets/images/metavers.png',
                // height: 300,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/homepage');
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      color: black,
                    ),
                    child: const Center(
                      child: Text(
                        'Next Step',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'Do you need any help? you can check all \nyou need on',
                      style: TextStyle(
                        color: black,
                      ),
                    ),
                    TextSpan(
                      text: ' Help Center',
                      style:
                          TextStyle(color: black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
