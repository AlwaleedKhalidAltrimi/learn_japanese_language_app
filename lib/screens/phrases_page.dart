import 'package:flutter/material.dart';
import '../components/phrase_item.dart';
import '../models/phrase_model.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<PhraseModel> phrasesList = const [
    PhraseModel(
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
      jpName: 'Kōdoku suru koto o wasurenaide kudasai',
      enName: "don't forget to subscribe",
    ),
    PhraseModel(
      sound: 'sounds/phrases/i_love_programming.wav',
      jpName: 'Watashi wa puroguramingu ga daisukidesu',
      enName: 'I love programming',
    ),
    PhraseModel(
      sound: 'sounds/phrases/programming_is_easy.wav',
      jpName: 'Puroguramingu wa kantandesu',
      enName: 'programming is easy',
    ),
    PhraseModel(
      sound: 'sounds/phrases/where_are_you_going.wav',
      jpName: 'Doko ni iku no?',
      enName: 'where are you going?',
    ),
    PhraseModel(
      sound: 'sounds/phrases/what_is_your_name.wav',
      jpName: 'Namae wa nandesu ka?',
      enName: 'what is your name?',
    ),
    PhraseModel(
      sound: 'sounds/phrases/i_love_anime.wav',
      jpName: 'Watashi wa anime ga daisukidesu',
      enName: 'I love anime',
    ),
    PhraseModel(
      sound: 'sounds/phrases/how_are_you_feeling.wav',
      jpName: 'Go kibun wa  ikagadesu ka?',
      enName: 'how are you feeling?',
    ),
    PhraseModel(
      sound: 'sounds/phrases/are_you_coming.wav',
      jpName: 'Kimasu ka?',
      enName: 'are you coming?',
    ),
    PhraseModel(
      sound: 'sounds/phrases/yes_im_coming.wav',
      jpName: 'Hai, ikimasu',
      enName: "yes, I'm coming",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Phrases',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: phrasesList.length,
        itemBuilder: (context, index) {
          return PhrasesItem(
            color: const Color(0xff50ADC7),
            phrase: phrasesList[index],
          );
        },
      ),
    );
  }
}
