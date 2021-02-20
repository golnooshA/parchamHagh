import 'package:flutter/material.dart';
import 'package:parcham_hagh/page/BookList/book_list_page.dart';
import '../Menu/menu_page.dart';

class BookmarkPage extends StatefulWidget {
  @override
  _BookmarkPageState createState() => _BookmarkPageState();
}

class _BookmarkPageState extends State<BookmarkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 241, 234),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 54, 202, 218),
        centerTitle: true,
        title: Text("مورد علاقه ها",
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
      body: ListView(
        shrinkWrap: true,
        controller: ScrollController(),
        children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width,
            child: BookCard(
                title: "اسم کتاب در یک خط",
                content: "اسم مولف کتاب در یک خط",
                image: "assets/bookSample.png",
                audioLanguageText: "FR",
                videoLanguageText: "FR,AR",
                bookLanguageText: "AR",
                onTap: () {}),
          ),
        ],
      ),
    );
  }
}
