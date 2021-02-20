import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommnetCardDesign extends StatelessWidget {
  
  final String date;
  final String commnet;
  final String answer;

  CommnetCardDesign(
      {
        @required this.date,
        @required this.commnet,
        this.answer})
      :
        assert(date != null),
        assert(commnet != null);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: 1,
        clipBehavior: Clip.antiAlias,
      color: Colors.white,
        shape:  RoundedRectangleBorder(
          borderRadius:BorderRadius.all(Radius.circular(5)),
        ),
      child: Column(
        children: [
          Container(
            color: Colors.transparent,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.only(top: 8, bottom: 8),
              padding: EdgeInsets.all(8),
              width: 80,
              height: 30,
              decoration: BoxDecoration(borderRadius:BorderRadius.only(topRight: Radius.circular(5), bottomRight: Radius.circular(5)), color: Color.fromARGB(255, 47, 113, 82) ),
              child: Text(date,
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10)),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(commnet,
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12)),
          ),

          Container(
            margin: EdgeInsets.only(top: 12),
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(borderRadius:BorderRadius.all(Radius.circular(5)),
                color: Color.fromARGB(255, 227, 255, 242) ),
            child: Text(answer,
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12)),
          ),

        ],
      ),
    );
  }
}