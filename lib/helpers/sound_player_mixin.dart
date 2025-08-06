import 'package:audioplayers/audioplayers.dart';

mixin PlaySound {
  void playSound(String sound) {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
