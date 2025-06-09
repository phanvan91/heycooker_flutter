import 'package:flutter/material.dart';
import 'package:heycooker_flutter/utils/log/log.dart';

class AppNavigatorObserver extends NavigatorObserver {
  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    log.info('AppNavigatorObserver didReplace ${newRoute?.settings.name}');
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    log.info('AppNavigatorObserver didPush ${route.settings.name}');
    super.didPush(route, previousRoute);
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    log.info('AppNavigatorObserver didPop ${route.settings.name}');
    super.didPop(route, previousRoute);
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    log.info('AppNavigatorObserver didRemove ${route.settings.name}');
    super.didRemove(route, previousRoute);
  }

  @override
  void didChangeTop(Route topRoute, Route? previousTopRoute) {
    log.info('AppNavigatorObserver didChangeTop ${topRoute.settings.name}');
    super.didChangeTop(topRoute, previousTopRoute);
  }
}
