import 'package:flutter/material.dart';
import '../models/phrase_model.dart';
import 'phrase_info.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.phrase, required this.color});

  final PhraseModel phrase;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: PhraseInfo(phrase: phrase),
    );
  }
}
