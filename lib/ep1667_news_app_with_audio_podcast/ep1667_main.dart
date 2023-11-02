import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_33/ep1667_news_app_with_audio_podcast/views/news_app_onboarding_page.dart';

void main() {
  runApp(NewsAppWithPodcast());
}

class NewsAppWithPodcast extends StatelessWidget {
  const NewsAppWithPodcast({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewsAppOnboardingPage(),
    );
  }
}
