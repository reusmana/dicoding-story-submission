class PageConfiguration {
  final bool uknown;
  final bool register;
  final bool? loginIn;
  final String? storyId;
  final bool? addStory;

  PageConfiguration.splash()
    : uknown = false,
      register = false,
      loginIn = null,
      addStory = false,
      storyId = null;
  PageConfiguration.login()
    : uknown = false,
      register = false,
      loginIn = true,
      addStory = false,
      storyId = null;
  PageConfiguration.register()
    : uknown = false,
      register = true,
      loginIn = null,
      addStory = false,
      storyId = null;
  PageConfiguration.home()
    : uknown = false,
      register = false,
      loginIn = true,
      addStory = false,
      storyId = null;
  PageConfiguration.detailStory(String id)
    : uknown = false,
      register = false,
      addStory = false,
      loginIn = true,
      storyId = id;
  PageConfiguration.addStory()
    : uknown = false,
      register = false,
      addStory = true,
      loginIn = false,
      storyId = null;
  PageConfiguration.uknown()
    : uknown = true,
      register = false,
      addStory = false,
      loginIn = null,
      storyId = null;

  bool get isSplashPage =>
      uknown == false &&
      register == false &&
      loginIn == null &&
      addStory == false &&
      storyId == null;
  bool get isLoginPage =>
      uknown == false &&
      register == false &&
      loginIn == false &&
      addStory == false &&
      storyId == null;
  bool get isRegisterPage =>
      uknown == false &&
      register == true &&
      loginIn == false &&
      addStory == false &&
      storyId == null;
  bool get isHomePage =>
      uknown == false &&
      register == false &&
      addStory == false &&
      loginIn == true &&
      storyId == null;
  bool get isAddStory =>
      uknown == false &&
      register == false &&
      addStory == true &&
      loginIn == true &&
      storyId == null;
  bool get isDetailPage =>
      uknown == false &&
      register == false &&
      addStory == false &&
      loginIn == true &&
      storyId != null;
  bool get isuknownPage =>
      uknown == true &&
      register == false &&
      loginIn == null &&
      addStory == false &&
      storyId == null;
}
