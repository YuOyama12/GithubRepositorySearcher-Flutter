// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$topRoute];

RouteBase get $topRoute => ShellRouteData.$route(
  navigatorKey: TopRoute.$navigatorKey,
  factory: $TopRouteExtension._fromState,
  routes: [
    GoRouteData.$route(
      path: '/search',
      factory: $SearchRoute._fromState,
      routes: [
        GoRouteData.$route(
          path: 'repository_detail',
          factory: $RepositoryDetailRoute._fromState,
        ),
        GoRouteData.$route(
          path: 'user_detail',
          factory: $UserDetailRoute._fromState,
        ),
      ],
    ),
    GoRouteData.$route(path: '/my_page', factory: $MyPageRoute._fromState),
  ],
);

extension $TopRouteExtension on TopRoute {
  static TopRoute _fromState(GoRouterState state) => const TopRoute();
}

mixin $SearchRoute on GoRouteData {
  static SearchRoute _fromState(GoRouterState state) => const SearchRoute();

  @override
  String get location => GoRouteData.$location('/search');

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

mixin $RepositoryDetailRoute on GoRouteData {
  static RepositoryDetailRoute _fromState(GoRouterState state) =>
      RepositoryDetailRoute(
        repositoryName: state.uri.queryParameters['repository-name']!,
        repositoryUrl: state.uri.queryParameters['repository-url']!,
      );

  RepositoryDetailRoute get _self => this as RepositoryDetailRoute;

  @override
  String get location => GoRouteData.$location(
    '/search/repository_detail',
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

mixin $UserDetailRoute on GoRouteData {
  static UserDetailRoute _fromState(GoRouterState state) => UserDetailRoute(
    userId: int.parse(state.uri.queryParameters['user-id']!),
    userName: state.uri.queryParameters['user-name']!,
  );

  UserDetailRoute get _self => this as UserDetailRoute;

  @override
  String get location => GoRouteData.$location(
    '/search/user_detail',
    queryParams: {
      'user-id': _self.userId.toString(),
      'user-name': _self.userName,
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

mixin $MyPageRoute on GoRouteData {
  static MyPageRoute _fromState(GoRouterState state) => const MyPageRoute();

  @override
  String get location => GoRouteData.$location('/my_page');

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
