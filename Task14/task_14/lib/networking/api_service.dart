import 'package:dio/dio.dart';
import 'package:task_14/models/news_model.dart';

class ApiService {
  Dio dio = Dio();
  Future<List<Article>> getAllNews() async {
    final NewsModel result;
    final Response respone = await dio.get(
      'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=46a8d2b919634add9bb6406d0a3bc1ce',
    );
    result = NewsModel.fromJson(respone.data);
    return result.articles ?? [];
  }
}
