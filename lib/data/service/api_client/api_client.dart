import 'package:dio/dio.dart';
import 'package:github_repository_searcher/domain/entity/response/repositories_response/repositories_response.dart';
import 'package:retrofit/retrofit.dart';

part "api_client.g.dart";

final apiClient = ApiClient(Dio(_dioOption));

final _dioOption = BaseOptions(
  baseUrl: 'https://api.github.com/',
  contentType: 'application/json',
);

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio)= _ApiClient;

  @GET("search/repositories")
  Future<RepositoriesResponse> fetchRepositoriesByQuery({
    @Query('q') required String query,
  });
}