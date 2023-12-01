import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoHero extends StatefulWidget {
  const VideoHero({super.key});

  @override
  State<VideoHero> createState() => _VideoHeroState();
}

class _VideoHeroState extends State<VideoHero> {
  late VideoPlayerController _controller;
  final String videoPath = 'web/assets/video/v1.mp4';

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset(videoPath);
    _controller.initialize().then((_) {
      _controller.setLooping(true);
      setState(() {
        _controller.play();
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        AspectRatio(
          aspectRatio: _controller.value.aspectRatio,
          child: VideoPlayer(_controller),
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'France Data',
            style: textTheme.displayLarge,
            children: <TextSpan>[
              TextSpan(
                text: '\n Atlas des Données de France',
                style: textTheme.displayMedium,
              ),
            ],
          ),
        )
      ],
    );
  }
}
