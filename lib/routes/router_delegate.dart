import 'package:flutter/material.dart';
import 'package:story_app_submission/class/page_configuration.dart';
import 'package:story_app_submission/class/response_story.dart';
import 'package:story_app_submission/data/auth_service.dart';
import 'package:story_app_submission/screens/add_story_screen.dart';
import 'package:story_app_submission/screens/detail_story_screen.dart';
import 'package:story_app_submission/screens/home_screen.dart';
import 'package:story_app_submission/screens/login_screen.dart';
import 'package:story_app_submission/screens/register_screen.dart';
import 'package:story_app_submission/screens/splash_screen.dart';

class MyRouterDelegate extends RouterDelegate<PageConfiguration>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  final GlobalKey<NavigatorState> _navigatorKey;
  String? selectedStory;
  bool? additionalData;
  final AuthService authService;

  final List<Story> stories = [];

  bool? isUnknown;

  bool isForm = false;

  MyRouterDelegate(this.authService)
    : _navigatorKey = GlobalKey<NavigatorState>() {
    _init();
  }

  List<Page> historyStack = [];
  bool? isLoggedIn;
  bool isRegister = false;

  _init() {
    Future.delayed(Duration(seconds: 1), () async {
      isLoggedIn = await authService.checkToken();
      notifyListeners();
    });
  }

  List<Page> get _splashStack => const [
    MaterialPage(key: ValueKey("SplashPage"), child: SplashScreen()),
  ];
  List<Page> get _loggedOutStack => [
    MaterialPage(
      key: const ValueKey("LoginPage"),
      child: LoginScreen(
        onLogin: () {
          isLoggedIn = true;

          notifyListeners();
        },
        onRegister: () {
          isRegister = true;
          notifyListeners();
        },
      ),
    ),
    if (isRegister == true)
      MaterialPage(
        key: const ValueKey("RegisterPage"),
        child: RegisterScreen(
          onRegister: () {
            isRegister = false;
            notifyListeners();
          },
          onLogin: () {
            isRegister = false;
            notifyListeners();
          },
        ),
      ),
  ];
  List<Page> get _loggedInStack => [
    MaterialPage(
      key: const ValueKey("StoriesListPage"),
      child: HomeScreen(
        stories: stories,
        onTapped: (String storyId) {
          selectedStory = storyId;

          notifyListeners();
        },
        onLogout: () {
          isLoggedIn = false;
          notifyListeners();
        },
        toAdd: () {
          additionalData = true;
          notifyListeners();
        },
      ),
    ),
    if (additionalData != null && additionalData == true)
      MaterialPage(
        key: ValueKey(additionalData),
        child: AddStoryScreen(
          onSend: () {
            additionalData = false;
            notifyListeners();
          },
        ),
      ),
    if (selectedStory != null)
      MaterialPage(
        key: ValueKey(selectedStory),
        child: DetailStoryScreen(storyId: selectedStory!),
      ),
  ];

  @override
  Widget build(BuildContext context) {
    if (isLoggedIn == null) {
      historyStack = _splashStack;
    } else if (isLoggedIn == true) {
      historyStack = _loggedInStack;
    } else {
      historyStack = _loggedOutStack;
    }

    return Navigator(
      key: navigatorKey,
      pages: historyStack,
      onPopPage: (route, result) {
        final didPop = route.didPop(result);
        if (didPop) {
          selectedStory = null;
          notifyListeners();

          additionalData = false;
          notifyListeners();

          isRegister = false;
          return true;
        }
        return false;
      },
    );
  }

  @override
  GlobalKey<NavigatorState>? get navigatorKey => _navigatorKey;

  @override
  Future<void> setNewRoutePath(PageConfiguration configuration) async {
    if (configuration.isuknownPage) {
      isUnknown = true;
      isRegister = false;
    } else if (configuration.isRegisterPage) {
      isRegister = true;
    } else if (configuration.isHomePage ||
        configuration.isLoginPage ||
        configuration.isSplashPage) {
      isUnknown = false;
      selectedStory = null;
      isRegister = false;
      additionalData = false;
    } else if (configuration.isDetailPage) {
      isUnknown = false;
      isRegister = false;
      additionalData = false;
      selectedStory = configuration.storyId.toString();
    } else if (configuration.isAddStory) {
      isUnknown = false;
      isRegister = false;
      additionalData = true;
      selectedStory = null;
    } else {
      print(' Could not set new route');
    }
    notifyListeners();
  }

  @override
  PageConfiguration? get currentConfiguration {
    if (isLoggedIn == null) {
      return PageConfiguration.splash();
    } else if (isRegister == true) {
      return PageConfiguration.register();
    } else if (isLoggedIn == false) {
      return PageConfiguration.login();
    } else if (isUnknown == true) {
      return PageConfiguration.uknown();
    } else if (selectedStory == null) {
      return PageConfiguration.home();
    } else if (selectedStory != null) {
      return PageConfiguration.detailStory(selectedStory!);
    } else if (additionalData == true) {
      return PageConfiguration.addStory();
    } else {
      return null;
    }
  }
}
