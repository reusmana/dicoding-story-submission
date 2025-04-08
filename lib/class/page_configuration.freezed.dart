// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_configuration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PageConfiguration {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PageConfiguration);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PageConfiguration()';
}


}

/// @nodoc
class $PageConfigurationCopyWith<$Res>  {
$PageConfigurationCopyWith(PageConfiguration _, $Res Function(PageConfiguration) __);
}


/// @nodoc


class SplashPage implements PageConfiguration {
  const SplashPage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashPage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PageConfiguration.splash()';
}


}




/// @nodoc


class LoginPage implements PageConfiguration {
  const LoginPage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginPage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PageConfiguration.login()';
}


}




/// @nodoc


class RegisterPage implements PageConfiguration {
  const RegisterPage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterPage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PageConfiguration.register()';
}


}




/// @nodoc


class HomePage implements PageConfiguration {
  const HomePage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomePage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PageConfiguration.home()';
}


}




/// @nodoc


class DetailStoryPage implements PageConfiguration {
  const DetailStoryPage(this.storyId);
  

 final  String storyId;

/// Create a copy of PageConfiguration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DetailStoryPageCopyWith<DetailStoryPage> get copyWith => _$DetailStoryPageCopyWithImpl<DetailStoryPage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailStoryPage&&(identical(other.storyId, storyId) || other.storyId == storyId));
}


@override
int get hashCode => Object.hash(runtimeType,storyId);

@override
String toString() {
  return 'PageConfiguration.detailStory(storyId: $storyId)';
}


}

/// @nodoc
abstract mixin class $DetailStoryPageCopyWith<$Res> implements $PageConfigurationCopyWith<$Res> {
  factory $DetailStoryPageCopyWith(DetailStoryPage value, $Res Function(DetailStoryPage) _then) = _$DetailStoryPageCopyWithImpl;
@useResult
$Res call({
 String storyId
});




}
/// @nodoc
class _$DetailStoryPageCopyWithImpl<$Res>
    implements $DetailStoryPageCopyWith<$Res> {
  _$DetailStoryPageCopyWithImpl(this._self, this._then);

  final DetailStoryPage _self;
  final $Res Function(DetailStoryPage) _then;

/// Create a copy of PageConfiguration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? storyId = null,}) {
  return _then(DetailStoryPage(
null == storyId ? _self.storyId : storyId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AddStoryPage implements PageConfiguration {
  const AddStoryPage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddStoryPage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PageConfiguration.addStory()';
}


}




/// @nodoc


class UnknownPage implements PageConfiguration {
  const UnknownPage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnknownPage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PageConfiguration.unknown()';
}


}




// dart format on
