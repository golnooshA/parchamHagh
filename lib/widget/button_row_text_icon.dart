import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonRowTextIcon extends StatelessWidget {

  final String buttonImage;
  final String text;
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

  ButtonRowTextIcon({
    this.fontSize = 10,
    this.imageSize = 16,
    this.text,
    this.borderRadiusBL = 20,
    this.borderRadiusBR = 20,
    this.borderRadiusTL = 20,
    this.borderRadiusTR = 20,
    this.textColor = Colors.white,
    this.buttonImage,
    @required this.backgroundColor,
  this.borderColor = Colors.transparent,
   this.borderWidth = 1,
  this.spaceBetween = 4,
    EdgeInsetsGeometry padding
  }):
    assert(backgroundColor != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2, right: 2,top: 12),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.only(topLeft:Radius.circular(borderRadiusTL),
            bottomLeft: Radius.circular(borderRadiusBL),
            bottomRight: Radius.circular(borderRadiusBR),
            topRight: Radius.circular(borderRadiusTR)),
      ),
      padding: EdgeInsets.all(8),
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
    );
  }

}