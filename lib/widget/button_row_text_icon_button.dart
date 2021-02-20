import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonRowTextIconButton extends StatelessWidget {

  final String buttonImage;
  final String text;
  final Function onTap;
  final double spaceBetween;
  final Color backgroundColor;
  final Color borderColor;
  final double borderWidth;
  final Color textColor;
  final double borderRadiusTL;
  final double borderRadiusTR;
  final double borderRadiusBL;
  final double borderRadiusBR;
  final double fontSize;
  final double imageSize;

  ButtonRowTextIconButton({
    this.fontSize = 10,
    this.imageSize = 16,
    this.text,
    this.borderRadiusBL = 20,
    this.borderRadiusBR = 20,
    this.borderRadiusTL = 20,
    this.borderRadiusTR = 20,
    this.textColor = Colors.white,
    this.buttonImage,
    @required this.onTap,
    @required this.backgroundColor,
  this.borderColor = Colors.transparent,
   this.borderWidth = 1,
  this.spaceBetween = 4,
    EdgeInsetsGeometry padding
  }):
    assert(backgroundColor != null),
    assert(onTap != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2, right: 2),
      child: RaisedButton(
        onPressed: onTap,

        child: (text != null )?Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          textDirection: TextDirection.rtl,
          children: <Widget>[

            (buttonImage != null)? Image.asset(
              buttonImage,
              width: imageSize,
              height: imageSize,
            ): Container(),
            SizedBox(width: spaceBetween),
            Text(
              text,
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: textColor,
                fontSize: fontSize,
              ),
            ),
          ],
        ) : Image.asset(
          buttonImage,
          width: imageSize,
          height: imageSize,
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(topLeft:Radius.circular(borderRadiusTL),
            bottomLeft: Radius.circular(borderRadiusBL),
            bottomRight: Radius.circular(borderRadiusBR),
            topRight: Radius.circular(borderRadiusTR)),
            side:BorderSide(width: borderWidth, color: borderColor)
        ),
        elevation: 0,
        color: backgroundColor,
        padding: EdgeInsets.all(8),
      ),
    );
  }

}