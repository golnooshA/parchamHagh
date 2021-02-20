import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parcham_hagh/component/audio_player/audio_player.dart';
import 'package:parcham_hagh/page/OneBook/tabs_Ui/single_video_player.dart';
import 'package:parcham_hagh/widget/button_circle_icon.dart';
import '../Menu/menu_page.dart';

class VideoListPage extends StatefulWidget {
  @override
  _VideoListPageState createState() => _VideoListPageState();
}

class _VideoListPageState extends State<VideoListPage> {

  AudioPlayer audioPlayer;
  bool audioControllerIsDeclared = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 241, 234),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 54, 202, 218),
        centerTitle: true,
        title: Text("لیست ویدیوها",
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
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Container(
          margin: EdgeInsets.all(20),
          child: ListView.builder(itemCount: 6,

              itemBuilder: (BuildContext context, int index){
                return Card(
                  elevation: 0,
                  margin: EdgeInsets.symmetric(vertical: 8),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  clipBehavior: Clip.antiAlias,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 240,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset("assets/language.png", fit: BoxFit.cover, width: double.infinity, height: 140),
                            Center(
                              child: ButtonCircleIcon(
                                width: 60.0,
                                height: 60.0,
                                padding: EdgeInsets.all(12),
                                icon: Icons.play_arrow,
                                onTap: () {
                                  audioPlayer.controller.dispose();
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => SingleVideoPlayer(
                                        videoType: "network",
                                        videoPath: "https://as9.cdn.asset.aparat.com/aparat-video/09bc37fbc486c56f3de3262503c8faf227177120-144p.mp4?wmsAuthSign=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbiI6Ijk5YzE4MGQ5Y2Y5OWRlYjhkMjFmMDdhNWU4ZWVkYzA3IiwiZXhwIjoxNjA2MTM0Nzk2LCJpc3MiOiJTYWJhIElkZWEgR1NJRyJ9.mEZOe38fmt-XuctEP6PYWXsyX242FF4G1Hphn9DzF1c",
                                        videoCover:Image.asset("assets/language.png", fit: BoxFit.cover, width: double.infinity, height: 140),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),


                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 4),
                          child: Text(
                            "اسم ویدیو",
                            maxLines: 1,
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Color.fromARGB(255, 60, 65, 69),
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 12, right: 12, top: 4, bottom: 12),
                          child: Text(
                            "تكملة النص شرح عن الكتاب في عدة سطور حسب تكملة النص شرح عن الكتاب في عدة سطور حسب تكملة النص شرح عن الكتاب في عدة سطور حسبتكملة النص شرح عن الكتاب في عدة سطور حسب تكملة النص شرح عن الكتاب في عدة سطور حسب تكملة النص شرح عن الكتاب في عدة سطور حسبتكملة النص شرح عن الكتاب في عدة سطور حسب تكملة النص شرح عن الكتاب في عدة سطور حسب تكملة النص شرح عن الكتاب في عدة سطور حسب",
                            maxLines: 2,
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Color.fromARGB(255, 60, 65, 69),
                              fontSize: 12,
                            ),
                          ),
                        )

                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
