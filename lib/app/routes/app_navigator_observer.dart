import 'package:flutter/material.dart';

class AppNavigatorObserver extends NavigatorObserver {
  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    print('AppNavigatorObserver didReplace ${newRoute?.settings.name}');
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    print('AppNavigatorObserver didPush ${route.settings.name}');
    super.didPush(route, previousRoute);
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    print('AppNavigatorObserver didPop ${route.settings.name}');
    super.didPop(route, previousRoute);
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    print('AppNavigatorObserver didRemove ${route.settings.name}');
    super.didRemove(route, previousRoute);
  }

  @override
  void didChangeTop(Route topRoute, Route? previousTopRoute) {
    print('AppNavigatorObserver didChangeTop ${topRoute.settings.name}');
    super.didChangeTop(topRoute, previousTopRoute);
  }
}
