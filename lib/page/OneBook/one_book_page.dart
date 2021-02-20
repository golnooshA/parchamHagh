import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:parcham_hagh/component/audio_player/audio_player.dart';
import 'package:parcham_hagh/component/audio_player/network_audio_player_controller.dart';
import 'package:parcham_hagh/component/static_tabs.dart';
import 'package:parcham_hagh/page/OneBook/properties_view/specifications_view.dart';
import 'package:parcham_hagh/page/OneBook/tab_views/audio_view.dart';
import 'package:parcham_hagh/page/OneBook/tab_views/pdf_file_view.dart';
import 'package:parcham_hagh/page/OneBook/tab_views/video_view.dart';
import 'package:parcham_hagh/page/OneBook/tabs_Ui/audio_player_ui.dart';
import 'package:parcham_hagh/page/Menu/menu_page.dart';
import 'package:parcham_hagh/widget/action_sheet_full_page.dart';
import 'package:parcham_hagh/widget/button_flat_icon.dart';
import 'package:parcham_hagh/widget/button_row_text_icon.dart';
import 'package:parcham_hagh/widget/button_row_text_icon_button.dart';

import 'properties_view/season_view.dart';
import 'properties_view/summary_view.dart';

class OneBookPage extends StatefulWidget {
  @override
  _OneBookPageState createState() => _OneBookPageState();
}

class _OneBookPageState extends State<OneBookPage> {
  AudioPlayer audioPlayer;
  bool audioControllerIsDeclared = false;
  final StaticTabsController tabController = StaticTabsController();
  String timeLeft;

  void init() async {
    if (!audioControllerIsDeclared) {
      audioControllerIsDeclared = true;
      audioPlayer = AudioPlayer(
        ui: MyAudioPlayerUI(context: context),
        controller: NetworkAudioPlayerController(
            "http://dl.musicdel.ir/Music/98/04/Music/Peyman%20Ataee%20%E2%80%93%20Ashghar%20Agha%20Befarma.mp3"),
      );
    }

    timeLeft = audioPlayer.controller.currentTotalSecondsLeft.toString();
  }

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
      body: Container(
        margin: EdgeInsets.only(left: 20,right: 20,top: 20),
        width: MediaQuery.of(context).size.width,
        child:ListView(
          shrinkWrap: true,
          controller: ScrollController(),
          children: [
            Wrap(
              runSpacing: -68,
              alignment: WrapAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 180,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          margin: EdgeInsets.only(bottom: 8),
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.all(Radius.circular(5))),
                          child: Image.asset("assets/bookSample.png",
                              fit: BoxFit.cover),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          margin: EdgeInsets.only(right: 12),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ButtonFlatIcon(onTap: (){}, iconSize: 24, iconColor: Color.fromARGB(255, 54, 202, 218), minWidth: 30, height: 0,
                                      icon:  Icons.bookmark_border,padding: EdgeInsets.only(left: 8,bottom: 8))
                                 , ButtonFlatIcon(onTap: (){}, iconSize: 24, iconColor: Color.fromARGB(255, 54, 202, 218), minWidth: 30, height: 0,
                                      icon:  Icons.share,padding: EdgeInsets.only(left: 8,bottom: 8))

                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 4),
                                width: MediaQuery.of(context).size.width,
                                child: Text(
                                  "اسم کتاب در یک خط",
                                  maxLines: 1,
                                  textAlign: TextAlign.right,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 60, 65, 69),
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.only(bottom: 4),
                                child: Text(
                                  "اسم کتاب در یک خط",
                                  maxLines: 1,
                                  textAlign: TextAlign.right,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 128, 128, 128),
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                StaticTabs(
                  initialIndex: 2,
                  controller: tabController,
                  tabsBuilder: (int index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                        Container(
                          width: 66,
                          margin: EdgeInsets.only(top: 18),
                          child: ButtonRowTextIconButton(
                              buttonImage: "assets/bookIcon.png",
                              onTap: () {},
                              backgroundColor:
                              Color.fromARGB(255, 89, 91, 131)),
                        ),
                        Container(
                          width: 66,
                          margin: EdgeInsets.only(top: 18),
                          child: ButtonRowTextIconButton(
                              buttonImage: "assets/player.png",
                              onTap: () {},
                              backgroundColor:
                              Color.fromARGB(255, 40, 171, 185)),
                        ),
                        Container(
                          width: 66,
                          margin: EdgeInsets.only(top: 18),
                          child: ButtonRowTextIconButton(
                              buttonImage: "assets/headphones.png",
                              onTap: () {},
                              backgroundColor:
                              Color.fromARGB(255, 45, 97, 135)),
                        ),
                      ],
                    );
                  },
                  views: [

                    PdfFileView(),
                    AudioView(),
                    VideoView()

                  ],
                ),
              ],
            ),
            StaticTabs(
              initialIndex: 1,
              controller: tabController,
              tabsBuilder: (int index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [ Expanded(
                    child: ButtonRowTextIconButton(
                        onTap: () {},
                        borderRadiusBL: 0,
                        borderRadiusBR: 10,
                        borderRadiusTL: 0,
                        borderRadiusTR: 10,
                        text: "خلاصة",
                        textColor: Color.fromARGB(255, 54, 202, 218),
                        backgroundColor: Colors.transparent,
                        borderColor: Color.fromARGB(255, 54, 202, 218),
                        borderWidth: 1),
                  ),

                    Expanded(
                      child: ButtonRowTextIconButton(
                          onTap: () {},
                          borderRadiusBL: 0,
                          borderRadiusBR: 0,
                          borderRadiusTL: 0,
                          borderRadiusTR: 0,
                          text: "فصلها",
                          textColor: Color.fromARGB(255, 54, 202, 218),
                          backgroundColor: Colors.transparent,
                          borderColor: Color.fromARGB(255, 54, 202, 218),
                          borderWidth: 1),
                    ),
                    Expanded(
                      child: ButtonRowTextIconButton(
                          onTap: () {},
                          borderRadiusBL: 10,
                          borderRadiusBR: 0,
                          borderRadiusTL: 10,
                          borderRadiusTR: 0,
                          text: "مشخصات",
                          textColor: Color.fromARGB(255, 54, 202, 218),
                          backgroundColor: Colors.transparent,
                          borderColor: Color.fromARGB(255, 54, 202, 218),
                          borderWidth: 1),
                    ),
                  ],
                );
              },
              views: [
                SpecificationsView(),
                SeasonView(),
                SummaryView()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
