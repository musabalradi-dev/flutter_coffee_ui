import 'package:coffee_ui/shared/util/coffee_tile.dart';
import 'package:coffee_ui/shared/util/coffee_type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List coffeeType = [
    [
      'Cappucino',
      true,
    ],
    [
      'Latte',
      false,
    ],
    [
      'Black',
      false,
    ],
    [
      'tea',
      false,
    ],
  ];

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
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Find the best coffee for you',
            style: GoogleFonts.bebasNeue(
              fontSize: 36,
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextFormField(
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Find your coffee..',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                )),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        SizedBox(
          height: 50,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: coffeeType.length,
            itemBuilder: (context, index) {
              return CoffeeType(
                coffeeType: coffeeType[index][0],
                isSelected: coffeeType[index][1],
                opTop: () {
                  coffeeTypeSelected(index);
                },
              );
            },
          ),
        ),
        Expanded(
          child: ListView(
            shrinkWrap: false,
            scrollDirection: Axis.horizontal,
            children: const [
              CoffeeTile(
                coffeeImagePath: 'assets/images/one.jpg',
                coffeeName: 'Latte',
                coffeePrice: '4',
              ),
              CoffeeTile(
                coffeeImagePath: 'assets/images/two.jpg',
                coffeeName: 'Latte',
                coffeePrice: '4',
              ),
              CoffeeTile(
                coffeeImagePath: 'assets/images/three.jpg',
                coffeeName: 'Latte',
                coffeePrice: '4',
              ),
              CoffeeTile(
                coffeeImagePath: 'assets/images/latte.jpg',
                coffeeName: 'Latte',
                coffeePrice: '4',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
