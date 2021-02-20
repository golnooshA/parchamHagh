import 'package:flutter/material.dart';
import 'package:parcham_hagh/page/Menu/menu_page.dart';
import 'package:parcham_hagh/widget/action_sheet_full_page.dart';
import 'package:parcham_hagh/widget/action_sheet_simple.dart';
import 'package:parcham_hagh/widget/button_flat_text.dart';
import 'package:parcham_hagh/widget/button_text.dart';

class LocationAndLanguagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 241, 234),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: 20, left: 40, right: 20),
            alignment: Alignment.centerLeft,
            child:  ButtonFlatText(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuPage()),
                );
              },
              textColor: Color.fromARGB(255, 203, 0, 63),
              minWidth: 0,
              height: 0,
              text: "رد کردن",
              fontSize: 16,),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                alignment: Alignment.center,
                child: Image.asset("assets/location.png",
                    width: double.infinity, height: double.infinity),
              ),

              Container(
                margin: EdgeInsets.only(
                    top: 80, bottom: 8, left: 80, right: 80),
                child: ButtonText(
                    onTap: () {
                      showModalBottomSheet(context: context,
                          isDismissible: true,
                          builder: (BuildContext buildContext) {
                            return ActionSheetSimple(
                              windowName: "زبان",

                              data: [
                                ActionSheeSimpleData(title: "عربی", onTap: (){}),
                                ActionSheeSimpleData(title: "فارسی", onTap: (){}),
                              ],

                            );
                          });
                    },
                    textColor: Color.fromARGB(255, 54, 202, 218),
                    height: 60,
                    minWidth: MediaQuery.of(context).size.width,
                    text: "زبان"),
              ),

              Container(
                margin: EdgeInsets.only(
                    top: 8, bottom: 20, left: 80, right: 80),
                child: ButtonText(
                    onTap: () {
                      showModalBottomSheet(context: context,
                          isDismissible: true,
                          builder: (BuildContext buildContext) {
                            return ActionSheetSimple(
                              windowName: "مکان",

                              data: [
                                ActionSheeSimpleData(title: "کویت", onTap: (){}),
                                ActionSheeSimpleData(title: "عراق", onTap: (){}),
                              ],

                            );
                          });
                    },
                    textColor: Color.fromARGB(255, 54, 202, 218),
                    height: 60,
                    minWidth: MediaQuery.of(context).size.width,
                    text: "مکان"),
              ),

            ],
          )
        ],
      ),
    );
  }
}
