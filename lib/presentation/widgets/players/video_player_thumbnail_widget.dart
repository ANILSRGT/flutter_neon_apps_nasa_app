import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:neon_apps_nasa_app/core/theme/i_app_theme.dart';
import 'package:neon_apps_nasa_app/presentation/widgets/app/app_indicator.dart';
import 'package:neon_apps_nasa_app/presentation/widgets/image/custom_cached_network_image.dart';
import 'package:video_thumbnail/video_thumbnail.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class _ThumbnailRes {
  const _ThumbnailRes({this.memory, this.network});

  final Uint8List? memory;
  final String? network;
}

class VideoPlayerThumbnailWidget extends StatelessWidget {
  const VideoPlayerThumbnailWidget({required this.videoUrl, super.key});

  final String videoUrl;

  Future<_ThumbnailRes?> _getThumbnail() async {
    try {
      if (!videoUrl.contains('youtube.com')) {
        final memory = await VideoThumbnail.thumbnailData(video: videoUrl);
        return _ThumbnailRes(memory: memory);
      }

      final url = YoutubePlayer.getThumbnail(
        videoId: YoutubePlayer.convertUrlToId(videoUrl) ?? '',
      );

      return _ThumbnailRes(network: url);
    } on Exception catch (_) {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<_ThumbnailRes?>(
      future: _getThumbnail(),
      builder: (context, snapshot) {
        return snapshot.connectionState == ConnectionState.waiting
            ? Center(
              child: SizedBox.square(
                dimension: 64,
                child: AppIndicator(
                  color: context.appThemeExt.appColors.grey.value,
                ),
              ),
            )
            : snapshot.data?.memory != null
            ? Image.memory(snapshot.data!.memory!, fit: BoxFit.cover)
            : snapshot.data?.network != null
            ? CustomCachedNetworkImage(
              imageUrl: snapshot.data!.network!,
              fit: BoxFit.cover,
            )
            : ColoredBox(color: context.appThemeExt.appColors.grey.value);
      },
    );
  }
}
