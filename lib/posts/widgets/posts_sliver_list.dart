import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reddit_clone/common_widgets/message_widget.dart';
import 'package:reddit_clone/common_widgets/reddit_post.dart';
import 'package:reddit_clone/posts/bloc/posts_bloc.dart';

class PostsSliverList extends StatelessWidget {
  const PostsSliverList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostsBloc, PostsState>(
      builder: (context, state) {
        if (state is PostsLoading) {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (state is PostsLoaded) {
          final childCount = state.response.data?.children?.length;
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: childCount,
              (context, index) {
                final postItem = state.response.data?.children?[index];
                return RedditPost(
                  postItem: postItem,
                );
              },
            ),
          );
        } else if (state is PostsFailure) {
          return SliverToBoxAdapter(
            child: MessageWidget(
              message: 'An error occured fetching posts ${state.exception}',
            ),
          );
        } else {
          return const SliverToBoxAdapter(child: SizedBox.shrink());
        }
      },
    );
  }
}
