import 'package:flutter/material.dart';

class ButtonWithActionSheet extends StatelessWidget {
  final String image;
  final String text;
  final Widget widget;
  final double size;
  final IconData icon;
  final Color iconColor;

  ButtonWithActionSheet(
      {
         this.image,
        this.iconColor,
        this.icon,
        this.size = 26,
         this.text,
        @required this.widget})
      :
        assert(widget != null);

  @override
  Widget build(BuildContext context) {
    if(text != null){
      return  MaterialButton
        (
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          onPressed: () {
            showModalBottomSheet(
                context: context,
                isDismissible: true,
                builder: (BuildContext buildContext) {
                  return widget;
                });
          },
          minWidth: 20,
          padding: EdgeInsets.zero,
          elevation: 0,
          color: Colors.transparent,
          splashColor: Colors.black12,
          highlightColor: Colors.black12,
          child: Row(
            children: [
              Image.asset(image,
                  width: size, height: size),
              Padding(
                padding: const EdgeInsets.all(4),
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 45, 97, 135)),
                ),
              )
            ],
          ));
    }
    else {
      return
        RawMaterialButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                isDismissible: true,
                builder: (BuildContext buildContext) {
                  return widget;
                });
          },
          child:  Icon(
            icon,
            color: iconColor,
            size: 42,
          ),
          fillColor: Colors.transparent,
          elevation: 0,
          splashColor: Colors.black12,
          highlightColor: Colors.black12,
          // padding: EdgeInsets.all(12),
        );
    }
  }
}
