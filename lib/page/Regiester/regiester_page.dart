import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:parcham_hagh/page/BookList/book_list_page.dart';
import 'package:parcham_hagh/page/Login/login_page.dart';
import 'package:parcham_hagh/widget/action_sheet_full_page.dart';
import 'package:parcham_hagh/widget/action_sheet_icon_button.dart';
import 'package:parcham_hagh/widget/action_sheet_simple.dart';
import 'package:parcham_hagh/widget/button_flat_text.dart';
import 'package:parcham_hagh/widget/button_image.dart';
import 'package:parcham_hagh/widget/button_with_action_sheet.dart';

// ignore: must_be_immutable
class RegiesterPage extends StatelessWidget {
  bool isRequired = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 241, 234),
      body: ListView(
        shrinkWrap: true,
        controller: ScrollController(),
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: 20, left: 40, right: 20),
            alignment: Alignment.centerLeft,
            child: ButtonFlatText(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookListPage()),
                );
              },
              textColor: Color.fromARGB(255, 203, 0, 63),
              minWidth: 0,
              height: 0,
              text: "رد کردن",
              fontSize: 16,
            ),
          ),
          Column(
            children: [
              Container(
                alignment: Alignment.centerRight,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
                child: Container(
                    margin:
                        EdgeInsets.only(top: 8, bottom: 8, left: 40, right: 40),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Colors.white),
                    width: 60,
                    height: 60,
                    child: ButtonWithActionSheet(
                        icon: Icons.camera_alt,
                        iconColor: Color.fromARGB(255, 54, 202, 218),
                        size: 42,
                        widget: ActionSheetIconButton(
                          data: [
                            ActionSheetIconDataButton(
                                title: "انتخاب از گالری",
                                widget: Image.asset("assets/picture.png",
                                    width: 22, height: 22),
                                onTap: () {}),
                            ActionSheetIconDataButton(
                                title: "انتخاب از دوربین",
                                widget: Image.asset("assets/camera.png",
                                    width: 22, height: 22),
                                onTap: () {}),
                          ],
                        ))),
              ),
              Container(
                height: 60,
                margin: EdgeInsets.only(top: 8, bottom: 8, left: 40, right: 40),
                child: TextFormField(
                  maxLines: 1,
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.right,
                  obscureText: false,
                  keyboardType: TextInputType.text,
                  focusNode: FocusNode(),
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    alignLabelWithHint: true,
                    hintMaxLines: 1,
                    hintText: 'نام کاربری',
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 54, 202, 218)),
                    errorStyle: TextStyle(
                        fontSize: 14, color: Color.fromARGB(255, 0, 58, 135)),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 0),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 0),
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
              Container(
                height: 60,
                margin: EdgeInsets.only(top: 4, bottom: 4, left: 40, right: 40),
                child: TextFormField(
                  maxLines: 1,
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.right,
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress,
                  focusNode: FocusNode(),
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    alignLabelWithHint: true,
                    hintMaxLines: 1,
                    hintText: 'ایمیل',
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 54, 202, 218)),
                    errorStyle: TextStyle(
                        fontSize: 14, color: Color.fromARGB(255, 0, 58, 135)),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 0),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 0),
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
              GestureDetector(
                child: Container(
                  margin:
                      EdgeInsets.only(top: 4, bottom: 4, left: 40, right: 40),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.white),
                  alignment: Alignment.centerRight,
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  padding: EdgeInsets.only(left: 12, right: 12),
                  child: Text(
                    "کشور",
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color.fromARGB(255, 54, 202, 218),
                      fontSize: 14,
                    ),
                  ),
                ),
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      isDismissible: true,
                      builder: (BuildContext buildContext) {
                        return ActionSheetFullPageWithButton(
                          windowName: "کشور",
                          itemsListView: (scrollController) => ListView.builder(
                            controller: scrollController,
                            itemBuilder: (context, index) {
                              return ListTile(
                                contentPadding: EdgeInsets.only(bottom: 8),
                                title: Text(
                                  "کویت",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black),
                                ),
                                onTap: () {},
                              );
                            },
                            itemCount: 100,
                            shrinkWrap: true,
                            physics: ScrollPhysics(
                              parent: ScrollPhysics(),
                            ),
                          ),
                        );
                      });
                },
              ),
              Container(
                height: 60,
                margin: EdgeInsets.only(top: 8, bottom: 8, left: 40, right: 40),
                child: TextFormField(
                  maxLines: 1,
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.right,
                  obscureText: false,
                  keyboardType: TextInputType.text,
                  focusNode: FocusNode(),
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    alignLabelWithHint: true,
                    hintMaxLines: 1,
                    hintText: 'رمزعبور',
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 54, 202, 218)),
                    errorStyle: TextStyle(
                        fontSize: 14, color: Color.fromARGB(255, 0, 58, 135)),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 0),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 0),
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
              )
            ],
          ),
          Column(
            children: [
              Container(
                alignment: Alignment.centerRight,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 8, bottom: 8, left: 140),
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                        child: RawMaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BookListPage()),
                            );
                          },
                          child: Text("ثبت نام",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                          fillColor: Color.fromARGB(255, 54, 202, 218),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                bottomLeft: Radius.circular(5)),
                          ),
                          splashColor: Colors.black12,
                          // padding: EdgeInsets.all(12),
                        )),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 8, bottom: 8, left: 140),
                      child: Text("یا ثبت نام با",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 16)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 8, bottom: 8, left: 140),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ButtonImage(
                              image: "assets/facebook.png", onTap: () {}),
                          ButtonImage(image: "assets/google.png", onTap: () {}),
                        ],
                      ),
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 8, bottom: 14, left: 140),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("حساب کاربری دارید؟ ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 58, 136),
                                    fontSize: 14)),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()),
                                );
                              },
                              child: Text("ورود ",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 38, 145, 153),
                                      fontSize: 16,
                                      decoration: TextDecoration.underline)),
                            ),
                          ],
                        ))
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
