// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_detail_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$userDetailRoute];

RouteBase get $userDetailRoute => GoRouteData.$route(
  path: '/user_detail',
  factory: $UserDetailRoute._fromState,
);

mixin $UserDetailRoute on GoRouteData {
  static UserDetailRoute _fromState(GoRouterState state) => UserDetailRoute(
    userId: int.parse(state.uri.queryParameters['user-id']!),
    userName: state.uri.queryParameters['user-name']!,
  );

  UserDetailRoute get _self => this as UserDetailRoute;

  @override
  String get location => GoRouteData.$location(
    '/user_detail',
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
