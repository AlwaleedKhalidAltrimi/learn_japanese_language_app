import 'package:learn_japanese_language_app/helpers/sound_player_mixin.dart';

class PhraseModel with PlaySound {
  final String sound;
  final String jpName;
  final String enName;

  const PhraseModel({
    required this.sound,
    required this.jpName,
    required this.enName,
  });

  void play() {
    playSound(sound);
  }
}
