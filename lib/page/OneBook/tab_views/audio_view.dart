import 'package:flutter/material.dart';

class AudioView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: Colors.black38,
          height: 40,
        ),
        Container(
          margin: EdgeInsets.only(top: 8),
          width: MediaQuery.of(context).size.width,
          child: Text(
            "ساعة و٤٥ دقيقة",
            maxLines: 1,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 18,
            ),
          ),
        ),
        SizedBox(
          height: 150,
          child: ListView.builder(
              shrinkWrap: true,
              reverse: true,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: 8, vertical: 20),
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Card(
                        elevation: 1,
                        margin: EdgeInsets.zero,
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(10))),
                        child: Container(
                          width: 140,
                          height: 115,
                          decoration: BoxDecoration(
                              color: Colors.black
                                  .withOpacity(0.8),
                              image: new DecorationImage(
                                image: new AssetImage(
                                    "assets/bookSample.png"),
                                fit: BoxFit.fill,
                              )),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        child: Text(
                          "1:06:07",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
