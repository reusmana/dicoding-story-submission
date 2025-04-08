import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_configuration.freezed.dart';

@freezed
class PageConfiguration with _$PageConfiguration {
  const factory PageConfiguration.splash() = SplashPage;
  const factory PageConfiguration.login() = LoginPage;
  const factory PageConfiguration.register() = RegisterPage;
  const factory PageConfiguration.home() = HomePage;
  const factory PageConfiguration.detailStory(String storyId) = DetailStoryPage;
  const factory PageConfiguration.addStory() = AddStoryPage;
  const factory PageConfiguration.unknown() = UnknownPage;
}
