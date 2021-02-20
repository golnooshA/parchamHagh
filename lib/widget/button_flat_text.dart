import 'package:flutter/material.dart';

class ButtonFlatText extends StatelessWidget {
  final Function onTap;
  final String text;
  final Color textColor;
  final double minWidth;
  final double height;
  final double fontSize;

  ButtonFlatText(
      {
        @required this.onTap,
        @required this.textColor,
        @required this.minWidth,
        @required this.height,
        @required this.text,
      this.fontSize = 12})
      :
        assert(textColor != null),
        assert(text != null),
        assert(height != null),
        assert(minWidth != null),
        assert(onTap != null);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: minWidth,
      height: height,
      splashColor: Colors.black12,
      highlightColor: Colors.black12,
      padding: EdgeInsets.zero,
      child: Text(text,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: textColor,
              fontSize: fontSize)),
      onPressed: onTap,
    );
  }
}
