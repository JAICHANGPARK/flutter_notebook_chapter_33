import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_33/ep1651_movie_streaming_app/view/movie_stream_home_page.dart';

void main() {
  runApp(
    const MovieStreamingApp(),
  );
}

class MovieStreamingApp extends StatelessWidget {
  const MovieStreamingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MovieStreamingHomePage(),
    );
  }
}
