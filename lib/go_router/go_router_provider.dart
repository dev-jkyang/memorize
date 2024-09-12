import 'package:flutter/material.dart';
import 'package:memorize/go_router/route_names.dart';
import 'package:memorize/layout/flash_card_view.dart';
import 'package:memorize/layout/input_my_keyword.dart';
import 'package:memorize/layout/main_view.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:go_router/go_router.dart';

part 'go_router_provider.g.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

@riverpod
GoRouter route(RouteRef ref) {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: RouteNames.mainViewWithSlash,
    routes: [
      GoRoute(
        path: RouteNames.mainViewWithSlash,
        name: RouteNames.mainView,
        pageBuilder: (context, state) => CustomTransitionPage(
          child: MainView(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        ),
      ),
      GoRoute(
        path: RouteNames.inputKeywordViewWithSlash,
        name: RouteNames.inputKeywordView,
        pageBuilder: (context, state) => CustomTransitionPage(
          child: const InputMyKeyword(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        ),
      ),
      GoRoute(
          path: RouteNames.flashCardViewWithSlash,
          name: RouteNames.flashCardView,
          pageBuilder: (context, state) {
            final title = state.pathParameters['title']!;
            return CustomTransitionPage(
              child: FlashCardView(
                title: title,
              ),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
            );
          }),
    ],
  );
}
