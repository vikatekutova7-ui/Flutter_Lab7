import 'dart:html' as html;

class SoundService {
  static html.AudioElement? _backgroundMusic;
  static bool _isMuted = false;
  static bool get isMuted => _isMuted;

  // Запуск фоновой музыки
  static void playBackground() {
    _backgroundMusic = 
    html.AudioElement('assets/assets/sounds/background.mp3')
      ..loop = true
      ..volume = 0.4;
    if (!_isMuted) {
      _backgroundMusic!.play();
    }
  }

  static void _playSound(String path, {double volume = 1.0}) {
    if (_isMuted) return;
    html.AudioElement(path)
      ..volume = volume
      ..play();
  }

  static void playWin() => _playSound('assets/assets/sounds/win.mp3');
  static void playJackpot() => _playSound('assets/assets/sounds/jackpot.mp3');
  static void playLose() => _playSound('assets/assets/sounds/lose.mp3', volume: 0.7);
  static void playClick() => _playSound('assets/assets/sounds/click.mp3', volume: 0.6);

  static void toggleMute() {
    _isMuted = !_isMuted;
    if (_isMuted) {
      _backgroundMusic?.pause();
    } else {
      _backgroundMusic?.play();
    }
  }
}