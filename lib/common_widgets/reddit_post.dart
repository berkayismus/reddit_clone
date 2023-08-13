import 'package:flutter/material.dart';
import 'package:reddit_clone/posts/models/post_model.dart';

class RedditPost extends StatelessWidget {
  final Child? postItem;

  const RedditPost({
    super.key,
    required this.postItem,
  });

  String get thumbnailUrl {
    try {
      if (postItem?.data?.thumbnail?.contains('http') == true) {
        return postItem?.data?.thumbnail ?? sampleThumbnailUrl;
      } else {
        return sampleThumbnailUrl;
      }
    } catch (e) {
      return sampleThumbnailUrl;
    }
  }

  String get title => postItem?.data?.title ?? 'Title not found';
  String get description => postItem?.data?.selftext ?? 'Description not found';

  String get sampleThumbnailUrl =>
      'https://cdn.pixabay.com/photo/2017/05/17/11/05/heart-2320561_1280.png';

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      elevation: 2.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 80.0,
              height: 80.0,
              margin: const EdgeInsets.only(right: 16.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(thumbnailUrl),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(description),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
