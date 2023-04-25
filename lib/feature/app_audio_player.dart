import 'package:audioplayers/audioplayers.dart';
import 'package:communicare/constants/app_enums.dart';
import 'package:communicare/feature/app_shared_preferences.dart';

class AppAudioPlayer {
  final AudioPlayer audioPlayer = AudioPlayer();

  static final AppAudioPlayer _instance = AppAudioPlayer._internal();

  factory AppAudioPlayer() {
    return _instance;
  }

  AppAudioPlayer._internal();

  Future<void> playAudio({required String fileName}) async {
    final gender = getGenderString(AppSharedPreferences().getGender())[0];

    if (fileName.contains('&')) {
      fileName = fileName.replaceAll(' ', '_');
    }

    await audioPlayer.play(AssetSource('/audio/${fileName}_${gender}.mp3'));
  }

  Future<bool> isAudioFinished() async {
    bool isFinished = false;
    await audioPlayer.onPlayerComplete.first.then((value) => isFinished = true);
    return isFinished;
  }
}
