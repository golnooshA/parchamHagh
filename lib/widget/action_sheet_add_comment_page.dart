import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parcham_hagh/widget/button_flat_icon.dart';
import 'package:parcham_hagh/widget/button_flat_text.dart';

class ActionSheetAddCommnetPage extends StatefulWidget {
  final void Function(Function) setStateFunc;
  final String myCommnet;

  const ActionSheetAddCommnetPage({this.myCommnet, this.setStateFunc});

  @override
  _ActionSheetAddCommnetPageState createState() =>
      _ActionSheetAddCommnetPageState();
}

class _ActionSheetAddCommnetPageState extends State<ActionSheetAddCommnetPage> {
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
      initialChildSize: 1,
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

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonFlatText(onTap: (){}, textColor: Color.fromARGB(255, 54, 202, 218), minWidth: 30, height: 30, text: "ایجاد"),
                      Text("نظر من",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 90, 104, 57),
                              fontSize: 20)),
                      Transform.rotate(
                        angle: 180 * pi / 180,
                        child:
                        ButtonFlatIcon(onTap: (){}, iconSize: 20, iconColor: Color.fromARGB(255, 54, 202, 218), minWidth: 30, height: 30,
                            icon:  Icons.arrow_back_ios,padding: EdgeInsets.zero)

                      )
                    ],
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(top: 8, bottom: 8, left: 20, right: 20),
                  child: TextFormField(
                    maxLines: 10,
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                    obscureText: false,
                    keyboardType: TextInputType.text,
                    maxLength: 500,
                    focusNode: FocusNode(),
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      alignLabelWithHint: true,
                      hintMaxLines: 1,
                      hintText: 'نظر من ...',
                      hintStyle:
                          TextStyle(color: Colors.black38),
                      errorStyle: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 0, 58, 135)),
                      filled: true,
                      fillColor: Color.fromARGB(255, 244, 241, 234),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide:
                            BorderSide(color: Colors.black12, width: 0),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide:
                            BorderSide(color: Colors.black12, width: 0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide:
                            BorderSide(color: Colors.transparent, width: 0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide:
                            BorderSide(color: Colors.transparent, width: 0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide:
                            BorderSide(color: Colors.transparent, width: 0),
                      ),
                    ),
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 58, 135),
                      fontSize: 14,
                    ),
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
