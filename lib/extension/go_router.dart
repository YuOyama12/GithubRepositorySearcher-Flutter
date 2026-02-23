import 'package:go_router/go_router.dart';

extension GoRouterExtension on GoRouter {
  bool isCurrentLocation(final String routePath) {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    final String location = matchList.uri.toString();
    return location.endsWith(routePath);
  }
}
