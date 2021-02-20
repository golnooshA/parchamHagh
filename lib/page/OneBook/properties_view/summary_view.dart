import 'package:flutter/material.dart';

class SummaryView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      margin: EdgeInsets.only(bottom: 20),
      clipBehavior: Clip.antiAlias,
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            "تكملة النص شرح عن الكتاب في عدة سطور حسب تكملة النص شرح عن الكتاب في عدة سطور حسب تكملة النص شرح عن الكتاب في عدة سطور حسبتكملة النص شرح عن الكتاب في عدة سطور حسب تكملة النص شرح عن الكتاب في عدة سطور حسب تكملة النص شرح عن الكتاب في عدة سطور حسبتكملة النص شرح عن الكتاب في عدة سطور حسب تكملة النص شرح عن الكتاب في عدة سطور حسب تكملة النص شرح عن الكتشرح عن الكتاب في عدة سطور حسب تكملة النص شرح عن الكتشرح عن الكتاب في عدة سطور حسب تكملة النص شرح عن الكتشرح عن الكتاب في عدة سطور حسب تكملة النص شرح عن الكتشرح عن الكتاب في عدة سطور حسب تكملة النص شرح عن الكتشرح عن الكتاب في عدة سطور حسب تكملة النص شرح عن الكتاب في عدة سطور حسب",
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 12,
            ),
          )),
    );
  }
}
