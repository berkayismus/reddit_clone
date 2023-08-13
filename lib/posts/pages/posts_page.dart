import 'package:flutter/material.dart';
import 'package:reddit_clone/common_widgets/reddit_post.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          title: Text('Reddit Posts'),
          pinned: true,
        ),
        SliverList(
            delegate:
                SliverChildBuilderDelegate(childCount: 30, (context, index) {
          return RedditPost(
            title: 'item $index',
            description: 'content $index',
            thumbnailUrl:
                'https://cdn.pixabay.com/photo/2017/05/17/11/05/heart-2320561_1280.png',
          );
        })),
      ],
    );
  }
}
