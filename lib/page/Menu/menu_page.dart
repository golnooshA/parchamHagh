import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parcham_hagh/page/AboutUs/about_us_page.dart';
import 'package:parcham_hagh/page/BookList/book_list_page.dart';
import 'package:parcham_hagh/page/Bookmark/bookmark_page.dart';
import 'package:parcham_hagh/page/Commnet/commnet_page.dart';
import 'package:parcham_hagh/page/Location/location_and_language.dart';
import 'package:parcham_hagh/page/Regiester/regiester_page.dart';
import 'package:parcham_hagh/page/VideoList/video_list_page.dart';
import 'package:parcham_hagh/widget/button_image.dart';
import 'package:parcham_hagh/widget/list_tile_leading.dart';


class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 241, 234),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 54, 202, 218),
        centerTitle: true,
        title: Text("صفحه منو",
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w600)),
        actions: <Widget>[
          Transform.rotate(
            angle:  pi / 2 ,
            child: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(left: 30, right:30, top:20),
        alignment: Alignment.center,
        child: ListView(
          shrinkWrap: true,
          controller: ScrollController(),
          children: [
            MenuListTile(widget: Image.asset("assets/home.png",width: 22, height: 22), onTap: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BookListPage()),
            );
            }, text: "صفحه اصلی"),
            Divider(color: Color.fromARGB(255,67,58,44), indent:30,endIndent: 20),
            MenuListTile(widget: Image.asset("assets/videoList.png",width: 22, height: 22), onTap: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => VideoListPage()),
            );
            }, text: "لیست ویدیوها"),
            Divider(color: Color.fromARGB(255,67,58,44), indent:30,endIndent: 20),
            MenuListTile(widget: Image.asset("assets/like.png",width: 22, height: 22), onTap: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BookmarkPage()),
            );
            }, text: "مورد علاقه ها"),
            Divider(color: Color.fromARGB(255,67,58,44), indent:30,endIndent: 20),
            MenuListTile(widget: Image.asset("assets/message.png",width: 22, height: 22),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => CommnetPage()));}, text: "ارسال نظرات"),
            Divider(color: Color.fromARGB(255,67,58,44), indent:30,endIndent: 20),
            MenuListTile(widget: Image.asset("assets/login.png",width: 22, height: 22),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => RegiesterPage()));}, text: "ثبت نام/ ورود"),
            Divider(color: Color.fromARGB(255,67,58,44), indent:30,endIndent: 20),
            MenuListTile(widget: Image.asset("assets/aboutUs.png",width: 22, height: 22),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUsPage()));}, text: "درباره ما"),
            Divider(color: Color.fromARGB(255,67,58,44), indent:30,endIndent: 20),
            MenuListTile(widget: Image.asset("assets/setting.png",width: 22, height: 22),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => LocationAndLanguagePage()));}, text: "تنظیمات"),
            Divider(color: Color.fromARGB(255,67,58,44), indent:30,endIndent: 20),


            Container(
              margin: EdgeInsets.only(top: 4, bottom: 8),
              child: Text("اشتراک گذاری",
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      color: Color.fromARGB(255,67,58,44),
                      fontSize: 16,
                      fontWeight: FontWeight.w600)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonImage(image: "assets/mobile.png", onTap: (){}),
                ButtonImage(image: "assets/whatsap.png", onTap: (){}),
                ButtonImage(image: "assets/gogle.png", onTap: (){}),

              ],
            ),

            Divider(color: Color.fromARGB(255,67,58,44), indent:30,endIndent: 20),

            Container(
              margin: EdgeInsets.only(top: 4, bottom: 8),
              child: Text("ارتباط با ما",
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      color: Color.fromARGB(255,67,58,44),
                      fontSize: 16,
                      fontWeight: FontWeight.w600)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                ButtonImage(image: "assets/mobile.png", onTap: (){}),
                ButtonImage(image: "assets/phone.png", onTap: (){}),
                ButtonImage(image: "assets/whatsap.png", onTap: (){}),
                ButtonImage(image: "assets/gogle.png", onTap: (){}),

              ],
            ),

            Divider(color: Color.fromARGB(255,67,58,44), indent:30,endIndent: 20),

            Container(
              margin: EdgeInsets.only(top: 4, bottom: 8),
              child: Text("دنبال کردن ما",
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      color: Color.fromARGB(255,67,58,44),
                      fontSize: 16,
                      fontWeight: FontWeight.w600)),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  ButtonImage(image: "assets/insta.png", onTap: (){}),
                  ButtonImage(image: "assets/facebok.png", onTap: (){}),
                  ButtonImage(image: "assets/twiter.png", onTap: (){}),
                  ButtonImage(image: "assets/youtube.png", onTap: (){}),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
