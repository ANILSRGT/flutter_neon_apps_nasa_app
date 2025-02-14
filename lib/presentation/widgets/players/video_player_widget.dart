import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:neon_apps_nasa_app/core/enums/app_double_values.dart';
import 'package:neon_apps_nasa_app/core/extensions/radius_app_double_values_extension.dart';
import 'package:neon_apps_nasa_app/core/theme/i_app_theme.dart';
import 'package:neon_apps_nasa_app/presentation/widgets/app/app_indicator.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({
    required this.videoUrl,
    super.key,
    this.canTouchable = true,
  });

  final String videoUrl;
  final bool canTouchable;

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
        flags: const YoutubePlayerFlags(autoPlay: false),
      );
      return;
    } else {
      _controller = VideoPlayerController.networkUrl(
          networkUrl,
          videoPlayerOptions: VideoPlayerOptions(),
        )
        ..initialize().then((_) {
          _chewieController = ChewieController(
            videoPlayerController: _controller!,
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
      child:
          _chewieController != null
              ? AspectRatio(
                aspectRatio: _controller!.value.aspectRatio,
                child: ClipRRect(
                  borderRadius: AppDoubleValues.md.extRadius.border.all,
                  child: Chewie(controller: _chewieController!),
                ),
              )
              : _youtubeController != null
              ? ClipRRect(
                borderRadius: AppDoubleValues.md.extRadius.border.all,
                child: YoutubePlayer(
                  controller: _youtubeController!,
                  showVideoProgressIndicator: true,
                ),
              )
              : ClipRRect(
                borderRadius: AppDoubleValues.md.extRadius.border.all,
                child: ColoredBox(
                  color: context.appThemeExt.appColors.darkGrey.value,
                  child: Center(
                    child: SizedBox.square(
                      dimension: 64,
                      child: AppIndicator(
                        color: context.appThemeExt.appColors.darkGrey.onColor,
                      ),
                    ),
                  ),
                ),
              ),
    );
  }
}
