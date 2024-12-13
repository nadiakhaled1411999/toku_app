import 'package:flutter/material.dart';

import 'package:toku_app/components/phrases_item.dart';

import 'package:toku_app/models/model_item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<ItemModel> phrasesList = const [
    ItemModel(
      sound: 'sounds/phrases/are_you_coming.wav',
      jpName: 'Kimasu ka',
      enName: 'Are you coming?',
    ),
    ItemModel(
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
        jpName: "Kodoku suru koto o wasurenaide kudasai",
        enName: 'dont forget to subscrib'),
    ItemModel(
        sound: 'sounds/phrases/i_love_anime.wav',
        jpName: 'Watashi wa anime ga daisukidesu',
        enName: 'i love anime'),
    ItemModel(
        sound: 'sounds/phrases/how_are_you_feeling.wav',
        jpName: 'Go kibun wa ikagadesu ka',
        enName: 'how are you feeling?'),
    ItemModel(
        sound: 'sounds/phrases/i_love_programming.wav',
        jpName: 'Watashi wa puroguramingu ga daisukidesu',
        enName: 'i love programming'),
    ItemModel(
        sound: 'sounds/phrases/programming_is_easy.wav',
        jpName: 'puroguramingu wa kantandesu',
        enName: 'programming is easy'),
    ItemModel(
        sound: 'sounds/phrases/what_is_your_name.wav',
        jpName: 'Namae wa nandesu ka',
        enName: 'what is your name?'),
    ItemModel(
        sound: 'sounds/phrases/where_are_you_going.wav',
        jpName: 'Doko ni iku no',
        enName: 'where are you going'),
    ItemModel(
        sound: 'sounds/phrases/yes_im_coming.wav',
        jpName: 'Hai, watashi wa ima ikimasu',
        enName: 'yes I\'m coming'),
     
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: const Color(0xff46322B),
          title: const Text(
            'phrases',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: phrasesList.length,
          itemBuilder: (context, index) {
            return PhrasesItem(
              color: const Color(0xff50ADC7),
              data: phrasesList[index],
            );
          },
        ));
  }
}
