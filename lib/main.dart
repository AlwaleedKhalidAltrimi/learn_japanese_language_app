import 'package:flutter/material.dart';
import 'package:learn_japanese_language_app/screens/home_page.dart';

void main() {
  runApp(const LearnJapaneseLanguage());
}

class LearnJapaneseLanguage extends StatelessWidget {
  const LearnJapaneseLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
