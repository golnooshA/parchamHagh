import 'package:flutter/material.dart';
import 'package:parcham_hagh/widget/action_sheet_add_comment_page.dart';
import 'package:parcham_hagh/widget/commnet_card_design.dart';

import '../Menu/menu_page.dart';

class CommnetPage extends StatefulWidget {
  @override
  _CommnetPageState createState() => _CommnetPageState();
}

class _CommnetPageState extends State<CommnetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 241, 234),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 54, 202, 218),
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(context: context, isDismissible: true, builder: (BuildContext buildContext){
            return ActionSheetAddCommnetPage();
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 54, 202, 218),
        centerTitle: true,
        title: Text("نظرات",
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w600)),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MenuPage()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 20, bottom: 20, left: 32, right: 32),
          width: MediaQuery.of(context).size.width,
          child: CommnetCardDesign(
              date: "10/23/2020",
              commnet:
                  "نص يكتب عن المتوفى في عدة سطور ويمكن وضع تاريخ الوفات او مكان العزاء او سنوية المتوُي او تثويبه لروحه  نص يكتب عن المتوفى في عدة سطور ويمكن وضع تاريخ الوفات او مكان العزاء او سنوية المتوُي او تثويبه لروحه  نص يكتب عن المتوفى في عدة سطور ويمكن وضع تاريخ الوفات او مكان العزاء او سنوية المتوُي او تثويبه لروحه  نص يكتب عن المتوفى في عدة سطور ويمكن وضع تاريخ الوفات او مكان العزاء او سنوية المتوُي او تثويبه لروحه.",
              answer:
                  "نص يكتب عن المتوفى في عدة سطور ويمكن وضع تاريخ الوفات او مكان العزاء او سنوية المتوُي او تثويبه لروحه  نص يكتب عن المتوفى في عدة سطور ويمكن وضع"),
        ),
      ),
    );
  }
}
