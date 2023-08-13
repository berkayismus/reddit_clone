import 'package:dio/dio.dart';

class ApiConstants {
  static BaseOptions baseOptions = BaseOptions(
    baseUrl: 'https://www.reddit.com/r/flutterdev/',
  );

  static const String postsPath = 'top.json';
}
