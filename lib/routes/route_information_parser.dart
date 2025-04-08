import 'package:flutter/material.dart';
import 'package:story_app_submission/class/page_configuration.dart';

class MyRouteInformationParser
    extends RouteInformationParser<PageConfiguration> {
  @override
  RouteInformation? restoreRouteInformation(PageConfiguration configuration) {
    if (configuration is UnknownPage) {
      return const RouteInformation(location: '/unknown');
    } else if (configuration is SplashPage) {
      return const RouteInformation(location: '/splash');
    } else if (configuration is RegisterPage) {
      return const RouteInformation(location: '/register');
    } else if (configuration is LoginPage) {
      return const RouteInformation(location: '/login');
    } else if (configuration is HomePage) {
      return const RouteInformation(location: '/');
    } else if (configuration is DetailStoryPage) {
      return RouteInformation(location: '/story/${configuration.storyId}');
    } else if (configuration is AddStoryPage) {
      return const RouteInformation(location: '/add/story');
    } else {
      return null;
    }
  }

  @override
  Future<PageConfiguration> parseRouteInformation(
    RouteInformation routeInformation,
  ) async {
    final uri = Uri.parse(routeInformation.location.toString());
    if (uri.pathSegments.isEmpty) {
      return PageConfiguration.home();
    } else if (uri.pathSegments.length == 1) {
      final first = uri.pathSegments.first.toLowerCase();
      if (first == 'home') {
        return PageConfiguration.home();
      } else if (first == 'login') {
        return PageConfiguration.login();
      } else if (first == 'register') {
        return PageConfiguration.register();
      } else if (first == "splash") {
        return PageConfiguration.splash();
      } else {
        return PageConfiguration.unknown();
      }
    } else if (uri.pathSegments.length == 2) {
      final first = uri.pathSegments.first.toLowerCase();
      final second = uri.pathSegments[1].toLowerCase();
      final storyId = int.tryParse(second) ?? 0;

      if (first == 'story' && (storyId >= 1 && storyId <= 5)) {
        return PageConfiguration.detailStory(second);
      } else if (first == 'add' && second == 'story') {
        return PageConfiguration.addStory();
      } else {
        return PageConfiguration.unknown();
      }
    } else {
      return PageConfiguration.unknown();
    }
  }
}
