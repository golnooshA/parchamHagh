import 'package:flutter/material.dart';
import 'audio_player_controller.dart';
import 'audio_player_ui.dart';
import 'controller_updater_widget.dart';
import 'sound_slider_widget.dart';

class AudioPlayer {
  final AudioPlayerUI ui;
  final AudioPlayerController controller;

  AudioPlayer({this.ui, this.controller}) {
    ui.controller = controller;
    ui.init();
  }

  Widget getCounterWidget() {
    return ControllerUpdater(
        getChild: ui.counter, controller: controller.counterController);
  }

  Widget getSliderWidget() {
    return SoundSlider(
      sliderThemeData: ui.sliderThemeData,
      controller: controller.sliderController,
      value: 4,
    );
  }

  Widget getPlayButtonWidget() {
    return ControllerUpdater(
        getChild: ui.playButton, controller: controller.playButtonController);
  }
}
