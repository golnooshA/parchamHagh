import 'widget_controllers.dart';

abstract class AudioPlayerController {
  int currentTotalSeconds = 0;
  int currentTotalMilliSeconds = 0;
  int currentTotalSecondsLeft = 0;
  int currentTotalMilliSecondsLeft = 0;
  int durationInSeconds = 0;
  int durationInMilliSeconds = 0;
  bool isPlaying = false;
  bool isLoading = false;
  Duration currentPosition = Duration();
  SetStateController counterController;
  SetStateController playButtonController;
  SoundSliderController sliderController;

  void play();
  void pause();
  void stop();
  void dispose();
}
