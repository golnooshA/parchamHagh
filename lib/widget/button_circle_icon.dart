import 'package:flutter/material.dart';

class ButtonCircleIcon extends StatelessWidget {
  final IconData icon;
  final Function onTap;
  final EdgeInsetsGeometry padding;
  final double width;
  final double height;

  ButtonCircleIcon(
      {
      @required this.icon,
      @required this.onTap,
      this.width = double.infinity,
      this.height = double.infinity,
      EdgeInsetsGeometry padding})
      :
        assert(icon != null),
        assert(onTap != null),
        this.padding = padding ?? EdgeInsets.all(22);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      clipBehavior: Clip.antiAlias,

      constraints: BoxConstraints(
        maxWidth: width,
        maxHeight: height,
      ),
      onPressed: onTap,
      child: Center(
        child: Icon(
          icon,
          color: Colors.white,
          size: 30,
        ),
      ),
      shape: CircleBorder(
          side: BorderSide(
              width: 1, color: Colors.transparent)),
      elevation: 1,
      fillColor: Colors.black12,
      padding: padding,
    );
  }
}
