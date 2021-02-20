import 'package:flutter/material.dart';

class ButtonFlatIcon extends StatelessWidget {
  final Function onTap;
  final IconData icon;
  final double minWidth;
  final double height;
  final double iconSize;
  final Color iconColor;
  final EdgeInsetsGeometry padding;

  ButtonFlatIcon(
      {
        @required this.onTap,
        @required this.iconSize,
        @required this.iconColor,
        @required this.minWidth,
        @required this.height,
      @required this.icon,
        EdgeInsetsGeometry padding})
      :
        assert(icon != null),
        assert(iconColor != null),
        assert(iconSize != null),
        assert(minWidth != null),
        assert(height != null),
        assert(onTap != null),
        this.padding = padding ?? EdgeInsets.all(16);


  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      onPressed: onTap,
      minWidth: minWidth,
      height: height,
      elevation: 0,
      color: Colors.transparent,
      padding: padding,
      child: Icon(icon, size: iconSize,color: iconColor),
    );
  }
}
