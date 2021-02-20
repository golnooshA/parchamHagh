import 'package:flutter/material.dart';

class ButtonCircle extends StatelessWidget {
  final Widget widget;
  final Function onTap;
  final EdgeInsetsGeometry padding;
  final double width;
  final double height;

  ButtonCircle(
      {
      @required this.widget,
      @required this.onTap,
      this.width = double.infinity,
      this.height = double.infinity,
      EdgeInsetsGeometry padding})
      :
        assert(widget != null),
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
      child: Center(child: widget),
      shape: CircleBorder(
        side: BorderSide(
            width: 1, color: Colors.transparent),
      ),
      elevation: 1,
      fillColor: Colors.black12,
      padding: padding,
    );
  }
}
