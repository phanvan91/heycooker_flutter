import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'app_navigator_observer.dart';
import 'app_route.gr.dart';
import 'package:heycooker_flutter/utils/log/log.dart';

final navigatorKey = GlobalKey<NavigatorState>();

BuildContext get globalContext => navigatorKey.currentContext ?? (throw 'The BuildContext is nullable!');

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  AppRouter() : super(navigatorKey: navigatorKey);
@override
  RouterConfig<UrlState> config({
    DeepLinkTransformer? deepLinkTransformer,
    DeepLinkBuilder? deepLinkBuilder,
    String? navRestorationScopeId,
    WidgetBuilder? placeholder,
    NavigatorObserversBuilder navigatorObservers = AutoRouterDelegate.defaultNavigatorObserversBuilder,
    bool includePrefixMatches = !kIsWeb,
    bool Function(String? location)? neglectWhen,
    bool rebuildStackOnDeepLink = false,
    Listenable? reevaluateListenable,
    Clip clipBehavior = Clip.hardEdge,
  }) {
    log.info('AppRouter config');
    return super.config(
      deepLinkTransformer: deepLinkTransformer,
      rebuildStackOnDeepLink: true,
      deepLinkBuilder:
          deepLinkBuilder ??
          (deepLink) {
            // if (deepLink.uri.scheme == 'app') {
            //   return DeepLink.single(MyWebViewRoute(extra: deepLink.uri));
            // }
            return DeepLink.defaultPath;
          },
      navRestorationScopeId: navRestorationScopeId,
      placeholder: placeholder,
      navigatorObservers: () => [AppNavigatorObserver()],
      includePrefixMatches: includePrefixMatches,
      neglectWhen: neglectWhen,
      reevaluateListenable: reevaluateListenable,
    );
  }

  @override
  List<AutoRoute> get routes => [
    MaterialRoute(page: SplashRoute.page, initial: true),
    MaterialRoute(page: IntroRoute.page),
    MaterialRoute(page: MainRoute.page),
  ];

  @override
  late final List<AutoRouteGuard> guards = [
    AutoRouteGuard.simple((resolver, router) {
      resolver.next();
    }),
  ];
}