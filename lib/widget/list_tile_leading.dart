
import 'package:flutter/material.dart';

class MenuListTile extends StatelessWidget {
  final Widget widget;
  final Function onTap;
  final String text;

  MenuListTile(
      {
        @required this.widget,
        @required this.onTap,
        @required this.text})
      :
        assert(widget != null),
        assert(onTap != null),
        assert(text != null);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        contentPadding: EdgeInsets.all(0),
        dense: true, visualDensity: VisualDensity(horizontal: 0, vertical: -4),
        leading: widget,
        title: Align(
          alignment: Alignment(1.25, 0),
          child: Text(text,
              textAlign: TextAlign.center,
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  color: Color.fromARGB(255,67,58,44),
                  fontSize: 14,
                  fontWeight: FontWeight.w600)),
        ),
        onTap: onTap
    );
  }
}
