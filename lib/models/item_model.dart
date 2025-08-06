import 'package:learn_japanese_language_app/helpers/sound_player_mixin.dart';

class ItemModel with PlaySound {
  final String sound;
  final String image;
  final String jpName;
  final String enName;

  const ItemModel({
    required this.sound,
    required this.image,
    required this.jpName,
    required this.enName,
  });

  void play() {
    playSound(sound);
  }
}
