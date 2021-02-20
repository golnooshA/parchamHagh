import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'button_flat_icon.dart';

class ActionSheetSimple extends StatelessWidget {

  final List<ActionSheeSimpleData> data;
  final String windowName;

  const ActionSheetSimple({

    @required this.data,
    @required this.windowName
  }):
    assert(data != null);

  @override
  Widget build(BuildContext context) {
    return
      Container(
        width: double.infinity,
        color: Colors.white,
        height: 220,
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
                        child: Text(windowName,
                            // widget.actionSheetLabel,
                            textAlign: TextAlign.center,
                            style:
                            TextStyle(color: Color.fromARGB(255, 90, 104, 57), fontSize: 20))),

                    Transform.rotate(
                      angle: 180 * pi / 180,
                      child:   ButtonFlatIcon(onTap: (){}, iconSize: 20, iconColor: Color.fromARGB(255, 67, 58, 44), minWidth: 30, height: 30,
                          icon:  Icons.arrow_back_ios,padding: EdgeInsets.zero)

                    )


                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 20 ),
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: data.length < 5 ? data.length : 5,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          contentPadding: EdgeInsets.symmetric(vertical: 4),
                          dense: true, visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                          title: Text(
                            data[index].title,
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black
                            ),
                          ),
                          onTap: data[index].onTap,
                        );
                      }
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  }
}

class ActionSheeSimpleData {
  final String title;
  final Function onTap;

  ActionSheeSimpleData({
    @required this.title,
    @required this.onTap,
  }):
    assert(title != null),
    assert(onTap != null);
}