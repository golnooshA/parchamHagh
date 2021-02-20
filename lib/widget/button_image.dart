import 'package:flutter/material.dart';

class ButtonImage extends StatelessWidget {
  final String image;
  final Function onTap;

  ButtonImage(
      {
        @required this.image,
        @required this.onTap})
      :
        assert(image != null),
        assert(onTap != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 4, right: 4, bottom: 8),
      child: RawMaterialButton(
        clipBehavior: Clip.antiAlias,
        constraints: BoxConstraints(
          maxWidth: 50,
          maxHeight: 50,
        ),
        onPressed: onTap,
        child: Center(
          child: Image.asset(image),
        ),
        shape:  RoundedRectangleBorder(
          borderRadius:BorderRadius.all(Radius.circular(5)),
        ),
        fillColor: Colors.white,
        elevation: 0,
        padding: EdgeInsets.all(12),
      ),
    );
  }
}
