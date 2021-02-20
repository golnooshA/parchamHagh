import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActionSheetIconButton extends StatelessWidget {

  final List<ActionSheetIconDataButton> data;

  const ActionSheetIconButton({
    @required this.data
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Directionality(
                textDirection: TextDirection.rtl,
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: data.length < 3 ? data.length : 3,
                  separatorBuilder: (BuildContext context, int index) => const Divider(),
                  itemBuilder: (BuildContext context, int index) {

                    return
                      ListTile(
                        contentPadding: EdgeInsets.all(8),
                        dense: true, visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                          leading: data[index].widget,
                          title: Align(
                            alignment: Alignment(1.2, 0),
                            child: Text(data[index].title,
                                textAlign: TextAlign.center,
                                textDirection: TextDirection.ltr,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14)),
                          ),
                          onTap: data[index].onTap,
                      );
                  }
                )
            ),
          ],
        )
    );
  }
}

class ActionSheetIconDataButton {
  final String title;
  final Widget widget;
  final Function onTap;

  ActionSheetIconDataButton({
    @required this.title,
    @required this.widget,
    @required this.onTap,
  }):
        assert(title != null),
        assert(widget != null),
        assert(onTap != null);
}
