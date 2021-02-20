
import 'package:parcham_hagh/component/video_player/video_player.dart';
import 'package:parcham_hagh/component/video_player/video_player_component.dart';
import 'video_player_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class SingleVideoPlayer extends StatefulWidget {
  final String videoPath;
  final String videoType;
  final Image videoCover;

  const SingleVideoPlayer(
      {Key key, this.videoType, this.videoPath, this.videoCover})
      : super(key: key);

  @override
  _SingleVideoPlayerState createState() => _SingleVideoPlayerState();
}

class _SingleVideoPlayerState extends State<SingleVideoPlayer> {
  MyVideoPlayer videoPlayer;
  bool showControllers;

  @override
  void initState() {
    super.initState();
    showControllers = true;
    videoPlayer = MyVideoPlayer(
      ui: MyVideoPlayerUI(context: context),
      controller: NetworkVideoPlayerController(networkPath: widget.videoPath)
    );
    videoPlayer.controller.play();
    videoPlayer.controller.isFullScreen = true;
    videoPlayer.controller.controller.addListener(() {
      if (mounted) setState(() {});
    });
  }

  @override
  void dispose() {
    videoPlayer.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: (MediaQuery.of(context).orientation == Orientation.landscape)
              ? MediaQuery.of(context).size.width
              : widget.videoCover.height,
          child: (videoPlayer.controller.isInitialize)
              ? Stack(
            children: [
              InkWell(
                onTap: () => showControllers = !showControllers,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: (MediaQuery.of(context).orientation ==
                      Orientation.landscape)
                      ? MediaQuery.of(context).size.width
                      : widget.videoCover.height,
                  child: VideoPlayer(videoPlayer.controller.controller),
                ),
              ),
              (showControllers)
                  ? Positioned(
                bottom: 10.0,
                left: 10.0,
                right: 10.0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey[600].withOpacity(0.8),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10.0),
                            width:
                            MediaQuery.of(context).size.width -
                                30,
                            height: 30,
                            child: videoPlayer.sliderVideo(
                                videoPlayer.controller.controller
                                    .value.duration,
                                videoPlayer.controller.controller
                                    .value.position),
                          ),
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(
                            right: 10.0, left: 30.0),
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            videoPlayer.counter(videoPlayer
                                .controller
                                .controller
                                .value
                                .position
                                .inSeconds),
                            videoPlayer.counter(videoPlayer
                                .controller
                                .controller
                                .value
                                .duration
                                .inSeconds -
                                videoPlayer.controller.controller
                                    .value.position.inSeconds),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(
                            right: 10.0, left: 10.0),
                        margin: EdgeInsets.only(bottom: 10.0),
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            videoPlayer.setVolume(),
                            videoPlayer.controller.controller.value
                                .isPlaying
                                ? videoPlayer.pauseButton()
                                : videoPlayer.playButton(),
                            videoPlayer.fullScreen(() {
                              videoPlayer.controller.isFullScreen =
                              false;
                              Navigator.of(context).pop();
                            }),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
                  : Container(),
            ],
          )
              : Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: (MediaQuery.of(context).orientation ==
                    Orientation.landscape)
                    ? MediaQuery.of(context).size.width
                    : widget.videoCover.height,
                child: widget.videoCover,
              ),
              Positioned(
                right: widget.videoCover.width / 3,
                top: widget.videoCover.height / 3,
                child: Container(
                  width: widget.videoCover.width / 3,
                  height: widget.videoCover.width / 3,
                  color: Colors.transparent,
                  child: CircularProgressIndicator(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
