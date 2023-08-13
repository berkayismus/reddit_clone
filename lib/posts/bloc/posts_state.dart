part of 'posts_bloc.dart';

@immutable
abstract class PostsState extends Equatable {
  const PostsState();

  @override
  List<Object?> get props => [];
}

class PostsInitial extends PostsState {}

class PostsLoading extends PostsState {}

class PostsLoaded extends PostsState {
  final PostModel response;

  const PostsLoaded({
    required this.response,
  });
}

class PostsFailure extends PostsState {
  final String exception;

  const PostsFailure({
    required this.exception,
  });

  @override
  List<Object?> get props => [
        exception,
      ];
}
