import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reddit_clone/core/di/injection.dart';
import 'package:reddit_clone/posts/bloc/posts_bloc.dart';
import 'package:reddit_clone/posts/widgets/posts_sliver_list.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<PostsBloc>()..add(PostFetched()),
      child: const PostsView(),
    );
  }
}

class PostsView extends StatelessWidget {
  const PostsView({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async => context.read<PostsBloc>().add(PostFetched()),
      child: const CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('Reddit Posts'),
            pinned: true,
          ),
          PostsSliverList(),
        ],
      ),
    );
  }
}
