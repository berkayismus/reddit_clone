import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:reddit_clone/posts/models/post_model.dart';
import 'package:reddit_clone/posts/repositories/posts_repository.dart';

part 'posts_event.dart';
part 'posts_state.dart';

@Injectable()
class PostsBloc extends Bloc<PostsEvent, PostsState> {
  PostsBloc(this._postsRepository) : super(PostsInitial()) {
    on<PostFetched>(_onPostFetched);
  }

  final IPostsRepository _postsRepository;

  FutureOr<void> _onPostFetched(
      PostFetched event, Emitter<PostsState> emit) async {
    try {
      emit(PostsLoading());

      final response = await _postsRepository.getPosts();

      emit(PostsLoaded(response: response));
    } catch (e) {
      emit(PostsFailure(exception: e.toString()));
    }
  }
}
