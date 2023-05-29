import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeType extends StatelessWidget {
  const CoffeeType(
      {Key? key,
      required this.coffeeType,
      required this.isSelected,
      required this.onTap})
      : super(key: key);
  final String coffeeType;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Text(
          coffeeType,
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.orange : Colors.white,
          ),
        ),
      ),
    );
  }
}
