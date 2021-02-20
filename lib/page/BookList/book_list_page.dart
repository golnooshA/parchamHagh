import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parcham_hagh/page/Menu/menu_page.dart';
import 'package:parcham_hagh/page/OneBook/one_book_page.dart';
import 'package:parcham_hagh/widget/action_sheet_simple.dart';
import 'package:parcham_hagh/widget/button_row_text_icon.dart';
import 'package:parcham_hagh/widget/button_with_action_sheet.dart';
import 'package:parcham_hagh/widget/ink_wrapper.dart';

class BookListPage extends StatefulWidget {
  @override
  _BookListPageState createState() => _BookListPageState();
}

class _BookListPageState extends State<BookListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 241, 234),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 54, 202, 218),
        centerTitle: true,
        title: Text("پرچم حق",
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w600)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MenuPage()),
              );
            },
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.favorite_border),
          onPressed: () {},
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20,right: 20,top: 20),
        width: MediaQuery.of(context).size.width,
        child: ListView(
         shrinkWrap: true,
          controller: ScrollController(),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 8, bottom: 20),
                  child:ButtonWithActionSheet(
                    image: "assets/language.png",
                    text: "زبان",
                    widget: ActionSheetSimple(
                      windowName: "زبان",
                      data: [
                        ActionSheeSimpleData(
                            title: "عربی", onTap: () {}),
                        ActionSheeSimpleData(
                            title: "فارسی", onTap: () {}),
                      ],
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 8, right: 8, bottom: 20),
                  child:ButtonWithActionSheet(
                    image: "assets/categorize.png",
                    text: "دسته ها",
                    widget:ActionSheetSimple(
                      windowName: "دسته ها",
                      data: [
                        ActionSheeSimpleData(
                            title: "صوتی", onTap: () {}),
                        ActionSheeSimpleData(
                            title: "ویدیو", onTap: () {}),
                        ActionSheeSimpleData(
                            title: "کتاب", onTap: () {}),
                      ],
                    )
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(right: 8, bottom: 20),
                  child:ButtonWithActionSheet(
                      image: "assets/filter.png",
                      text: "فیلتر",
                      widget:ActionSheetSimple(
                        windowName: "فیلتر",
                        data: [
                          ActionSheeSimpleData(
                              title: "???", onTap: () {}),
                          ActionSheeSimpleData(
                              title: "???", onTap: () {}),
                        ],
                      )
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  itemCount: 4,
                  controller: ScrollController(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.only(top: 8, bottom: 8),
                      child: BookCard(
                          title: "اسم کتاب در یک خط",
                          content: "اسم مولف کتاب در یک خط",
                          image: "assets/bookSample.png",
                          audioLanguageText: "FR",
                          videoLanguageText: "FR,AR",
                          bookLanguageText: "AR",
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OneBookPage()),
                            );
                          }),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class BookCard extends StatelessWidget {
  final String title;
  final String content;
  final Function onTap;
  final String image;
  final String audioLanguageText;
  final String videoLanguageText;
  final String bookLanguageText;

  const BookCard({
    @required this.title,
    @required this.content,
    @required this.image,
    @required this.audioLanguageText,
    @required this.videoLanguageText,
    @required this.bookLanguageText,
    @required this.onTap,
  })  : assert(image != null),
        assert(title != null),
        assert(content != null),
        assert(onTap != null),
        assert(audioLanguageText != null),
        assert(bookLanguageText != null),
        assert(videoLanguageText != null);

  @override
  Widget build(BuildContext context) {
    return InkWrapper(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Colors.white),
              width: MediaQuery.of(context).size.width,
              height: 140),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.transparent),
            height: 160,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    margin: EdgeInsets.only(bottom: 12),
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Image.asset(image, fit: BoxFit.cover),
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 140,
                    margin:
                        EdgeInsets.only(left: 8, top: 34, right: 8, bottom: 11),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 4),
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            title,
                            maxLines: 1,
                            textAlign: TextAlign.right,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Color.fromARGB(255, 60, 65, 69),
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(bottom: 12),
                          child: Text(
                            content,
                            maxLines: 1,
                            textAlign: TextAlign.right,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Color.fromARGB(255, 128, 128, 128),
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // (audioLanguageText != "")
                            //   ? Container(
                            // width: 74,
                            //     child: ButtonRowTextIcon(
                            //     text: audioLanguageText,
                            //     buttonImage: "assets/headphones.png",
                            //     backgroundColor: Color.fromARGB(255, 45, 97, 135)),
                            //   )
                            //   : Container(),

                            (videoLanguageText != "")
                                ? Container(
                                    width: 74,
                                    child: ButtonRowTextIcon(
                                        text: videoLanguageText,
                                        buttonImage: "assets/player.png",
                                        backgroundColor:
                                            Color.fromARGB(255, 40, 171, 185)),
                                  )
                                : Container(),
                            (bookLanguageText != "")
                                ? Container(
                                    width: 74,
                                    child: ButtonRowTextIcon(
                                        text: bookLanguageText,
                                        buttonImage: "assets/bookIcon.png",
                                        backgroundColor:
                                            Color.fromARGB(255, 89, 91, 131)),
                                  )
                                : Container(),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      onTap: onTap,
      highlightColor: Colors.black12,
      splashColor: Colors.black12,
      borderRadius: BorderRadius.all(Radius.circular(5)),
    );
  }
}
