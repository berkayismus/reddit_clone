import 'package:flutter/material.dart';
import 'package:reddit_clone/core/di/injection.dart';
import 'package:reddit_clone/posts/pages/posts_page.dart';

void main() {
  configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reddit Clone - Using Flutter',
      home: PostsPage(),
    );
  }
}
