import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:reddit_clone/constants/api_paths.dart';
import 'package:reddit_clone/posts/models/post_model.dart';

abstract class IPostsRepository {
  Future<PostModel> getPosts();
}

@Injectable(as: IPostsRepository)
class PostsRepository implements IPostsRepository {
  final redditClient = Dio(ApiConstants.baseOptions);

  @override
  Future<PostModel> getPosts() async {
    final response = await redditClient.get(ApiConstants.postsPath);
    return PostModel.fromJson(response.data);
  }
}
