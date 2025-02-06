import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({
    required this.videoUrl,
    super.key,
  });

  final String videoUrl;

  @override
  VideoPlayerWidgetState createState() => VideoPlayerWidgetState();
}

class VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  VideoPlayerController? _controller;
  YoutubePlayerController? _youtubeController;
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();
    final networkUrl = Uri.parse(widget.videoUrl);
    if (networkUrl.host == 'www.youtube.com') {
      _youtubeController = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(widget.videoUrl)!,
      );
      return;
    } else {
      _controller = VideoPlayerController.networkUrl(
        networkUrl,
        videoPlayerOptions: VideoPlayerOptions(),
      )..initialize().then((_) {
          _chewieController = ChewieController(
            videoPlayerController: _controller!,
            autoPlay: true,
          );
          setState(() {});
        });
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    _chewieController?.dispose();
    _youtubeController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _chewieController != null
          ? AspectRatio(
              aspectRatio: _controller!.value.aspectRatio,
              child: Chewie(controller: _chewieController!),
            )
          : _youtubeController != null
              ? YoutubePlayer(
                  controller: _youtubeController!,
                  showVideoProgressIndicator: true,
                )
              : const CircularProgressIndicator(),
    );
  }
}
