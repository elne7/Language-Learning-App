import 'package:flutter/material.dart';
import 'package:language/components/item.dart';
import 'package:language/models/item_model.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  final List<ItemMoodel> colors = const [
    ItemMoodel(
        image: 'assets/images/colors/color_black.png',
        jpName: 'Kuro',
        enName: 'Black',
        sound: 'sounds/colors/black.wav'),
    ItemMoodel(
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Chairo',
        enName: 'Brown',
        sound: 'sounds/colors/brown.wav'),
    ItemMoodel(
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Hokori ppoi kiiro',
        enName: 'Dusty Yellow',
        sound: 'sounds/colors/dusty yellow.wav'),
    ItemMoodel(
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Gure',
        enName: 'Gray',
        sound: 'sounds/colors/gray.wav'),
    ItemMoodel(
        image: 'assets/images/colors/color_green.png',
        jpName: 'Midori',
        enName: 'Green',
        sound: 'sounds/colors/green.wav'),
    ItemMoodel(
        image: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'Red',
        sound: 'sounds/colors/red.wav'),
    ItemMoodel(
        image: 'assets/images/colors/color_white.png',
        jpName: 'Shiro',
        enName: 'White',
        sound: 'sounds/colors/white.wav'),
    ItemMoodel(
        image: 'assets/images/colors/yellow.png',
        jpName: 'Kiiro',
        enName: 'Yellow',
        sound: 'sounds/colors/yellow.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Colors'),
            backgroundColor: const Color(0xff46322B)),
        body: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return Item(
              number: colors[index],
              color: const Color(0xffEF9235),
            );
          },
        ));
  }
}
