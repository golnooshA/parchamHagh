
import 'package:flutter/material.dart';
import 'package:parcham_hagh/component/audio_player/audio_player_ui.dart';
import 'package:parcham_hagh/widget/button_circle.dart';
import 'package:parcham_hagh/widget/button_circle_icon.dart';

class MyAudioPlayerUI extends AudioPlayerUI {
  final BuildContext context;

  MyAudioPlayerUI({this.context})
      : assert(context != null);

  @override
  void init() {
    sliderThemeData = SliderTheme.of(context).copyWith(
        trackHeight: 5,
        activeTrackColor: Color.fromARGB(255, 54, 202, 218),
        thumbShape: RectSliderThumbShape(),
        thumbColor: Color.fromARGB(255, 54, 202, 218),
        inactiveTrackColor: Colors.black54);
  }

  @override
  Widget counter() {
    MinutesSeconds ms = MinutesSeconds(controller.currentTotalSecondsLeft);
    int currentMinutes = ms.getMinutes();
    int currentSeconds = ms.getSeconds();
    return Text(
      '${currentMinutes > 9 ? currentMinutes : '0$currentMinutes'}:${currentSeconds > 9 ? currentSeconds : '0$currentSeconds'}',
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
      style: TextStyle(
          fontSize: 10,
          color: Colors.black54),
    );
  }

  @override
  Widget playButton() {
    return (controller.isLoading)
        ? ButtonCircle(
      width: 60.0,
      height: 60.0,
      widget: CircularProgressIndicator(),
      onTap: () {},
      padding: EdgeInsets.all(10),
    )
        : ButtonCircleIcon(
      width: 60.0,
      height: 60.0,
      padding: EdgeInsets.all(10),

      icon: controller.isPlaying == null || !controller.isPlaying
          ? Icons.play_arrow
          : Icons.pause,
      onTap: () {
        if (controller.isPlaying) {
          controller.pause();
        } else {
          controller.play();
        }
      },
    );
  }

}

class MinutesSeconds {
  int _mins;
  int _secs;

  MinutesSeconds(int totalSeconds) {
    _mins = (totalSeconds / 60).floor();
    _secs = totalSeconds - (_mins * 60);
  }

  int getSeconds() {
    return _secs;
  }

  int getMinutes() {
    return _mins;
  }
}
