import 'package:flutter/material.dart';
import 'package:language/components/phrase_item.dart';
import 'package:language/models/phrase_model.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<PhraseModel> phrases = const [
    PhraseModel(
        jpName: 'Kimasu ka?',
        enName: 'Are you coming?',
        sound: '/sounds/phrases/are_you_coming.wav'),
    PhraseModel(
        jpName: 'Kōdoku o o wasurenaku',
        enName: 'Don\'t forget to subscribe',
        sound: '/sounds/phrases/dont_forget_to_subscribe.wav'),
    PhraseModel(
        jpName: 'Go kibun wa ikagadesu ka?',
        enName: 'How are you feeling?',
        sound: '/sounds/phrases/how_are_you_feeling.wav'),
    PhraseModel(
        jpName: 'Watashi wa anime ga daisukidesu',
        enName: 'I love anime',
        sound: '/sounds/phrases/i_love_anime.wav'),
    PhraseModel(
        jpName: 'Watashi wa puroguramingu\n ga daisukidesu',
        enName: 'I love programming',
        sound: '/sounds/phrases/i_love_programming.wav'),
    PhraseModel(
        jpName: 'Puroguramingu wa kantan',
        enName: 'Programming is easy',
        sound: '/sounds/phrases/programming_is_easy.wav'),
    PhraseModel(
        jpName: 'Anata no namae wa nanidesu ka?',
        enName: 'What is your name?',
        sound: '/sounds/phrases/what_is_your_name.wav'),
    PhraseModel(
        jpName: 'Doko ni iku no?',
        enName: 'Where are you going?',
        sound: '/sounds/phrases/where_are_you_going.wav'),
    PhraseModel(
        jpName: 'Hai, ikimasu yo!',
        enName: 'Yes, i\'m coming!',
        sound: '/sounds/phrases/yes_im_coming.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Phrases'),
            backgroundColor: const Color(0xff46322B)),
        body: ListView.builder(
          itemCount: phrases.length,
          itemBuilder: (context, index) {
            return PhraseItem(
              phrase: phrases[index],
              color: const Color(0xff50ADC7),
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
