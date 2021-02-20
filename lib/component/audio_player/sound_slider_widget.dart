import 'package:flutter/material.dart';
import 'widget_controllers.dart';

class SoundSlider extends StatefulWidget {
  final int value;
  final int max;
  final SliderThemeData sliderThemeData;
  final SoundSliderController controller;

  SoundSlider({this.max, this.value, this.sliderThemeData, this.controller});

  @override
  State<SoundSlider> createState() {
    return _SoundSliderState(
        value: value ?? 0, max: max == null ? 0 : max.toDouble());
  }
}

class _SoundSliderState extends State<SoundSlider> {
  double _value;
  double max;

  _SoundSliderState({int value, this.max}) : _value = value.toDouble();

  @override
  void initState() {
    super.initState();
    widget.controller.setValue = setValue;
  }

  @override
  void didUpdateWidget(SoundSlider oldWidget) {
    widget.controller.setValue = setValue;
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    widget.controller.setValue = setValue;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
        data: widget.sliderThemeData,
        child: Slider(
            value: _value,
            max: max,
            onChanged: (double val) {
              if (mounted)
                setState(() {
                  _value = val;
                });
              widget.controller.onChanged(val);
            },
            onChangeEnd: (double val) {
              if (mounted)
                setState(() {
                  _value = val;
                });
              widget.controller.onChangeEnd(val);
            },
            onChangeStart: (double val) {
              if (mounted)
                setState(() {
                  _value = val;
                });
              widget.controller.onChangeStart(val);
            }));
  }

  setValue(double val, {double max}) {
    if (max == null) {
      if (mounted)
        setState(() {
          _value = val;
        });
    } else {
      if (val > max) {
        val = max;
      }
      if (val < 0.0) {
        val = 0.0;
      }
      if (mounted)
        setState(() {
          _value = val;
          this.max = max;
        });
    }
    if (mounted)
      setState(() {
        _value = val;
      });
  }
}
