import 'package:flutter/material.dart';
import 'package:parcham_hagh/widget/action_sheet_full_page.dart';

class VideoView extends StatelessWidget {

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
        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // audioPlayer.getSliderWidget(),
              Divider(
                color: Colors.black38,
                height: 40,
              ),
              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [
                  //  Text(timeLeft),
                  // audioPlayer.getCounterWidget(),

                  Text("4:00"),
                  Text("3:06")
                ],
              ),
              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [

                  IconButton(
                      icon: Icon(Icons.shutter_speed,
                          size: 24, color: Colors.black54),
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(Icons.forward_30,
                          size: 24, color: Colors.black54),
                      onPressed: () {}),
                  IconButton(
                      iconSize: 40,
                      icon: Icon(Icons.play_circle_filled,
                          color: Color.fromARGB(
                              255, 54, 202, 218)),
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(Icons.replay_10,
                          size: 24, color: Colors.black54),
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(Icons.list,
                          size: 24, color: Colors.black54),
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            isDismissible: true,
                            builder:
                                (BuildContext buildContext) {
                              return ActionSheetFullPageWithButton(
                                // actionSheetLabel: "لیست صوت ها",
                                itemsListView:
                                    (scrollController) =>
                                    ListView.builder(
                                      controller:
                                      scrollController,
                                      itemBuilder:
                                          (context, index) {
                                        return InkWell(
                                            onTap: () {},
                                            child: Padding(
                                              padding:
                                              EdgeInsets.all(
                                                  8.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceBetween,
                                                children: [
                                                  Text("فصل 1",
                                                      style: TextStyle(
                                                          fontSize:
                                                          12,
                                                          color: Color.fromARGB(
                                                              255,
                                                              54,
                                                              202,
                                                              218))),
                                                  Text("12 min",
                                                      style: TextStyle(
                                                          fontSize:
                                                          12,
                                                          color: Colors
                                                              .black))
                                                ],
                                              ),
                                            ));
                                      },
                                      itemCount: 100,
                                      shrinkWrap: true,
                                      physics: ScrollPhysics(
                                        parent: ScrollPhysics(),
                                      ),
                                    ),
                              );
                            });
                      }),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
