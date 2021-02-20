import 'dart:async';
import 'package:just_audio/just_audio.dart';
import 'audio_player_controller.dart';
import 'widget_controllers.dart';

class NetworkAudioPlayerController extends AudioPlayerController {
  final String url;

  AudioPlayer _player;
  StreamSubscription<Duration> _posChangedSubs;
  StreamSubscription<Duration> _durChangedSubs;
  bool _canUpdateCounter = false;
  Completer _onUpdateSliderEnd;

  NetworkAudioPlayerController(this.url) {
    counterController = SetStateController();
    playButtonController = SetStateController();
    sliderController = SoundSliderController(
        onChangeStart: _onSliderChangeStart,
        onChangeEnd: _onSliderChangeEnd,
        onChanged: _onSliderChanged);
  }

  void _createPlayer() async {
    _player = AudioPlayer();
    isLoading = true;
    _updatePlayButton();
    await _player.setUrl(this.url);
    Timer(Duration(seconds: 1), () {
      final state = _player.playbackState;
      if (state != AudioPlaybackState.none ||
          state != AudioPlaybackState.connecting) {
        _player.play();
        isLoading = false;
        isPlaying = true;
        _canUpdateCounter = true;
        _updatePlayButton();
        _durChangedSubs = _player.durationStream.listen((Duration d) {
          if (durationInSeconds == null || durationInSeconds <= 0) {
            durationInMilliSeconds = d.inMilliseconds;
            durationInSeconds = d.inSeconds;
            _updateCounter();
          }
        });

        _posChangedSubs = _player.getPositionStream().listen((Duration d) {
          if (_canUpdateCounter) {
            _updateCurrents(d.inMilliseconds, d.inSeconds);
            _updateCounter();
            _updateSlider();
          }
          _stopIfEnd(d.inMilliseconds);
        });
      }
    });
  }

  void _stopIfEnd(int currentMillies) {
    _onUpdateSliderEnd = Completer();
    if (currentMillies >= durationInMilliSeconds) {
      _onUpdateSliderEnd.complete();
      _stop();
    }
  }

  void _stop() {
    _player.stop();
    isPlaying = false;
    _updatePlayButton();
  }

  void _updateCurrents(int totalMillies, int totalSeconds) {
    currentTotalMilliSeconds = totalMillies;
    currentTotalSeconds = totalSeconds;
    currentTotalMilliSecondsLeft = durationInMilliSeconds - totalMillies;
    currentTotalSecondsLeft = durationInSeconds - totalSeconds;
  }

  void _updateCounter() {
    if (counterController != null) counterController.setState();
  }

  void _updateSlider() {
    sliderController.setValue(currentTotalMilliSeconds.toDouble(),
        max: durationInMilliSeconds.toDouble());
  }

  void _updatePlayButton() {
    if (playButtonController != null) playButtonController.setState();
  }

  void _onSliderChangeStart(double val) {
    _canUpdateCounter = false;
    _onUpdateSliderEnd.future.then((v) {
      _canUpdateCounter = false;
    });
  }

  void _onSliderChangeEnd(double val) async {
    await _player.seek(Duration(milliseconds: val.toInt()));
    _canUpdateCounter = true;
    _stopIfEnd(val.toInt());
    return _onUpdateSliderEnd.future;
  }

  void _onSliderChanged(double val) {
    _updateCurrents(val.toInt(), val ~/ 1000);
    _updateCounter();
  }

  @override
  void dispose() {
    if (_player != null) {
      _player.dispose();
      _posChangedSubs.cancel();
      _durChangedSubs.cancel();
      _player = null;
      currentTotalMilliSecondsLeft = 0;
      currentTotalSecondsLeft = 0;
      isPlaying = false;
      sliderController.setValue(0.0, max: durationInMilliSeconds.toDouble());
      _updateCounter();
      _updatePlayButton();
    }
  }

  @override
  void pause() {
    if (_player != null) {
      _player.pause();
      isPlaying = false;
      _updatePlayButton();
    }
  }

  @override
  void play() {
    if (_player == null) {
      _createPlayer();
    } else {
      _player.play();
      isPlaying = true;
      _canUpdateCounter = true;
      _updatePlayButton();
    }
  }

  @override
  void stop() {
    _player.stop();
    isPlaying = false;
  }
}
