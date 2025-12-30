import 'package:dio/dio.dart';
import 'package:github_repository_searcher/data/service/api_client/app_dio.dart';
import 'package:github_repository_searcher/domain/entity/response/repositories_response/repositories_response.dart';
import 'package:github_repository_searcher/domain/entity/response/repositories_response/repository/repository.dart';
import 'package:github_repository_searcher/domain/entity/response/user_response/user_response.dart';
import 'package:retrofit/retrofit.dart';

part "api_client.g.dart";

final apiClient = ApiClient(AppDio());

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio) = _ApiClient;

  @GET('search/repositories')
  Future<RepositoriesResponse> fetchRepositoriesByQuery({
    @Query('q') required String query,
    @Query('page') int? page,
  });

  @GET('user/{account_id}')
  Future<UserResponse> fetchUserById({@Path('account_id') required int id});

  @GET('users/{username}/repos')
  Future<List<Repository>> fetchUserRepositories({
    @Path('username') required String userName,
  });

  /// 認証用APIが存在していないので、こちらを認証目的で使用する。
  @GET('user')
  Future<UserResponse> auth({@Header('Authorization') required String header});
}
