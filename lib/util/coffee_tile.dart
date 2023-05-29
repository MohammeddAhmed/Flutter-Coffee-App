import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeTile extends StatelessWidget {
  const CoffeeTile({Key? key,required this.coffeeImagePath, required this.coffeeName, required this.coffeePrice}) : super(key: key);
  final String coffeeImagePath;
  final String coffeeName;
  final String coffeePrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, bottom: 25),
      child: Container(
        padding: const EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Coffee Image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(coffeeImagePath),
            ),

            /// Coffee Name
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(coffeeName, style: GoogleFonts.poppins(fontSize: 20)),
                  const SizedBox(height: 5),
                  Text(
                    'With Almond Milk',
                    style: GoogleFonts.poppins(color: Colors.grey[700]),
                  ),
                ],
              ),
            ),

            /// Price
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$$coffeePrice', style: GoogleFonts.poppins(fontSize: 18)),
                  Container(
                    padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10 ),
                      ),
                      child: const Icon(Icons.add)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
