class SoundSliderController {
  Function(double val, {double max}) setValue;
  Function(double val) onChangeEnd;
  Function(double val) onChangeStart;
  Function(double val) onChanged;
  SoundSliderController(
      {this.onChangeStart, this.onChangeEnd, this.onChanged, this.setValue});
}

class SetStateController {
  Function() setState;
  SetStateController({this.setState});
}
