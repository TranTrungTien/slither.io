import 'package:flame_audio/flame_audio.dart';

enum SlitherSound {
  alertBad('alert_bad.ogg'),
  alertDismiss('alert_dismiss.ogg'),
  alertMoney('alert_money.ogg'),
  alertNeutral('alert_neutral.ogg'),
  boostStart('boost_start.ogg'),
  boostStop('boost_stop.ogg'),
  buttonDownAlt('button_down_alt.ogg'),
  buttonDown('button_down.ogg'),
  buttonUpAlt('button_up_alt.ogg'),
  buttonUp('button_up.ogg'),
  error1('error_1.ogg'),
  error2('error_2.ogg'),
  error3('error_3.ogg'),
  navigate('navigate.ogg'),
  startGame('start_game.ogg'),
  whoosh('whoosh.ogg');

  final String fileName;
  const SlitherSound(this.fileName);
}

class AudioService {
  static bool _initialized = false;

  static Future<void> init() async {
    if (_initialized) return;
    FlameAudio.audioCache.prefix = 'sounds/';
    await FlameAudio.audioCache.loadAll(
      SlitherSound.values.map((s) => s.fileName).toList(),
    );
    _initialized = true;
  }

  static void play(SlitherSound sound, {double volume = 1.0}) {
    if (!_initialized) return;
    FlameAudio.play(sound.fileName, volume: volume);
  }
}
