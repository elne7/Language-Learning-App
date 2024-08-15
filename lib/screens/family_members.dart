import 'package:flutter/material.dart';
import 'package:language/components/item.dart';
import 'package:language/models/item_model.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});

  final List<ItemMoodel> familyMembers = const [
    ItemMoodel(
        image: 'assets/images/family_members/family_father.png',
        jpName: 'Chichioya',
        enName: 'Father',
        sound: 'sounds/family_members/father.wav'),
    ItemMoodel(
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'Musume',
        enName: 'Daughter',
        sound: 'sounds/family_members/daughter.wav'),
    ItemMoodel(
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'Ojiisan',
        enName: 'Grand Father',
        sound: 'sounds/family_members/grand father.wav'),
    ItemMoodel(
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'Hahaoya',
        enName: 'Mother',
        sound: 'sounds/family_members/mother.wav'),
    ItemMoodel(
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'Sobo',
        enName: 'Grand Mother',
        sound: 'sounds/family_members/grand mother.wav'),
    ItemMoodel(
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Niisan',
        enName: 'Older Brother',
        sound: '/sounds/family_members/older bother.wav'),
    ItemMoodel(
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Ane',
        enName: 'Older Sister',
        sound: '/sounds/family_members/older sister.wav'),
    ItemMoodel(
        image: 'assets/images/family_members/family_son.png',
        jpName: 'Musuko',
        enName: 'Son',
        sound: '/sounds/family_members/son.wav'),
    ItemMoodel(
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'Ototu',
        enName: 'Younger Brother',
        sound: '/sounds/family_members/younger brohter.wav'),
    ItemMoodel(
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'Imotu',
        enName: 'Younger Sister',
        sound: '/sounds/family_members/younger sister.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Family Members'),
            backgroundColor: const Color(0xff46322B)),
        body: ListView.builder(
          itemCount: familyMembers.length,
          itemBuilder: (context, index) {
            return Item(
              number: familyMembers[index],
              color: const Color(0xff558B37),
            );
          },
        ));
  }
}

// List<Widget> getList(List<Number> numbers) {
//   List<Widget> itemList = [];
//   for (int i = 0; i < numbers.length; i++) {
//     itemList.add(Item(
//       number: numbers[i],
//       color: const Color(0xff558B37),
//     ));
//   }
//   return itemList;
// }
