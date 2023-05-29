import 'package:coffee/util/coffee_tile.dart';
import 'package:coffee/util/coffee_type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /// list of coffee type
  final List coffeeType = [
    ['Cappuccino', true],
    ['Espresso', false],
    ['Latte', false],
    ['Flat White', false],
    ['Black', false],
  ];

  /// Coffee tapped on Coffee Types
  void coffeeTypeSelected(int index) {
    setState(() {
      for (int i = 0; i < coffeeType.length; i++) {
        coffeeType[i][1] = false;
      }
      coffeeType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.person),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
        ],
      ),
      body: Column(
        children: [
          /// Find The best Coffee for you.
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Find the best Coffee for you',
              style: GoogleFonts.bebasNeue(
                fontSize: 60,
              ),
            ),
          ),
          const SizedBox(height: 25),
          /// Search Bar.
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Find your Coffee..',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
              ),
            ),
          ),
          const SizedBox(height: 25),
          /// Horizontal ListView of Coffee types.
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(right: 25.0),
              itemCount: coffeeType.length,
              itemBuilder: (context, index) {
                return CoffeeType(
                  coffeeType: coffeeType[index][0],
                  isSelected: coffeeType[index][1],
                  onTap: () => coffeeTypeSelected(index),
                );
              },
            ),
          ),
          /// Horizontal ListView of Coffee title.
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                CoffeeTile(
                  coffeeImagePath: 'images/coffee3.png',
                  coffeeName: 'Cappuccino',
                  coffeePrice: '8.00',
                ),
                CoffeeTile(
                  coffeeImagePath: 'images/coffee3.png',
                  coffeeName: 'Latte',
                  coffeePrice: '5.50',
                ),
                CoffeeTile(
                  coffeeImagePath: 'images/coffee3.png',
                  coffeeName: 'Milk Coffee thing',
                  coffeePrice: '3.00',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
