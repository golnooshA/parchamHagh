import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:parcham_hagh/component/video_player/video_player_component.dart';
import 'package:parcham_hagh/widget/button_circle_icon.dart';

class MyVideoPlayerUI extends VideoPlayerUI {
  final BuildContext context;

  MyVideoPlayerUI({this.context});

  @override
  Widget playButton() {
    return (!controller.controller.value.isBuffering)
        ? ButtonCircleIcon(
      width: 60.0,
      height: 60.0,
      icon: Icons.play_arrow,
      onTap: () {
        controller.play();
      },
    )
        : Container(
        width: 30.0, height: 30.0, child: CircularProgressIndicator());
  }

  @override
  Widget pauseButton() {
    return (!controller.controller.value.isBuffering)
        ? ButtonCircleIcon(
      width: 60.0,
      height: 60.0,
      icon:Icons.pause,
      onTap: () {
        controller.pause();
      },
    )
        : Container(
        width: 30.0, height: 30.0, child: CircularProgressIndicator());
  }

  @override
  Widget counter(int minutes, int seconds) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Text(
        '${minutes > 9 ? minutes : '0$minutes'}:${seconds > 9 ? seconds : '0$seconds'}',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 11.0, color: Colors.white),
      ),
    );
  }

  @override
  Widget fullScreen(Function fullScreenFunc) {
    return IconButton(
      icon: Icon(
        controller.isFullScreen
            ? Icons.zoom_out
            : Icons.zoom_out_map,
        color: Colors.white,
        size: 20,
      ),
      onPressed: () {
        fullScreenFunc();
      },
    );
  }

  @override
  Widget screenRotation() {
    return IconButton(
        icon: Icon( Icons.refresh,
          color: Colors.white,
          size: 20,
        ),
        onPressed: () {
          if (MediaQuery.of(context).orientation == Orientation.portrait) {
            SystemChrome.setPreferredOrientations([
              DeviceOrientation.landscapeLeft,
            ]);
          } else {
            SystemChrome.setPreferredOrientations([
              DeviceOrientation.portraitUp,
            ]);
          }
        });
  }

  @override
  Widget setVolume() {
    return IconButton(
      icon: Icon(
        controller.isMuted
            ? Icons.volume_off
            : Icons.volume_up,
        color: Colors.white,
        size: 20,
      ),
      onPressed: () {
        if (controller.isMuted)
          controller.setVolume(false);
        else
          controller.setVolume(true);
      },
    );
  }

  @override
  Widget sliderVideo(double duration, double seekPos, double position,
      Function(double) onChange, Function(double) onChangeEnd) {
    return Slider(
      min: 0.0,
      max: duration,
      activeColor: Colors.white,
      inactiveColor: Colors.white70,
      value: seekPos ?? max(0.0, min(position, duration)),
      onChanged: (value) {
        onChange(value);
      },
      onChangeEnd: (value) {
        onChangeEnd(value);
      },
    );
  }
}
