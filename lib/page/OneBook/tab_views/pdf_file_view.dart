import 'package:flutter/material.dart';
import 'package:parcham_hagh/widget/button_row_text_icon_button.dart';

class PdfFileView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: Colors.black38,
          height: 40,
        ),
        Container(
          margin: EdgeInsets.only(top: 8, bottom: 8),
          width: MediaQuery.of(context).size.width,
          child: Text(
            "345 صفحه",
            maxLines: 1,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 18,
            ),
          ),
        ),
        Image.asset("assets/pdf.png",
            width: 100, height: 100),
        Container(
          width: 140,
          height: 42,
          margin: EdgeInsets.only(top: 12, bottom: 20),
          child: ButtonRowTextIconButton(
            onTap: () {},
            fontSize: 14,
            backgroundColor: Color.fromARGB(255, 54, 202, 218),
            borderRadiusBL: 10,
            borderRadiusBR: 10,
            borderRadiusTL: 10,
            borderRadiusTR: 10,
            textColor: Colors.white,
            text: "دانلود کتاب AR",
            buttonImage: "assets/download.png",
            imageSize: 20,
          ),
        )
      ],
    );
  }
}
