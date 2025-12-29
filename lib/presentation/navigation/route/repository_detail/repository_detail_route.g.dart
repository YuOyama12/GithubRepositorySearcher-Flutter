// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_detail_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$repositoryDetailRoute];

RouteBase get $repositoryDetailRoute => GoRouteData.$route(
  path: '/repository_detail',
  factory: $RepositoryDetailRoute._fromState,
);

mixin $RepositoryDetailRoute on GoRouteData {
  static RepositoryDetailRoute _fromState(GoRouterState state) =>
      RepositoryDetailRoute(
        repositoryName: state.uri.queryParameters['repository-name']!,
        repositoryUrl: state.uri.queryParameters['repository-url']!,
      );

  RepositoryDetailRoute get _self => this as RepositoryDetailRoute;

  @override
  String get location => GoRouteData.$location(
    '/repository_detail',
    queryParams: {
      'repository-name': _self.repositoryName,
      'repository-url': _self.repositoryUrl,
    },
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
