import 'dart:math';
import 'package:flutter/material.dart';

import 'button_flat_icon.dart';


class ActionSheetFullPageWithButton extends StatefulWidget {

  final Widget Function(ScrollController controller) itemsListView;
  final void Function(Function) setStateFunc;
  final String windowName;

  const ActionSheetFullPageWithButton(
      {
        this.windowName = "",
        this.itemsListView,
        this.setStateFunc});

  @override
  _ActionSheetFullPageWithButtonState createState() =>
      _ActionSheetFullPageWithButtonState();
}

class _ActionSheetFullPageWithButtonState
    extends State<ActionSheetFullPageWithButton> {
  @override
  void initState() {
    if (widget.setStateFunc != null) widget.setStateFunc(setStateF);
    super.initState();
  }

  void setStateF() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.5,
      maxChildSize: 1,
      expand: false,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          width: double.infinity,
          color: Colors.white,
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 12,right: 12, bottom: 26),
                  child:  Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(widget.windowName,
                              textAlign: TextAlign.center,
                              style:
                              TextStyle(color: Color.fromARGB(255, 90, 104, 57), fontSize: 20))),

                      Transform.rotate(
                        angle: 180 * pi / 180,
                        child:

                        ButtonFlatIcon(onTap: (){}, iconSize: 20, iconColor: Color.fromARGB(255, 67, 58, 44), minWidth: 30, height: 30,
                            icon:  Icons.arrow_back_ios,padding: EdgeInsets.zero)

                      )
                    ],
                  ),
                ),


                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 8, bottom: 8, left: 20, right: 20 ),
                    child: widget.itemsListView(scrollController),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
