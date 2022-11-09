// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pay_fort_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PayFortOptions {
  FortEnvironment get environment => throw _privateConstructorUsedError;
  AndroidOptions get androidOptions => throw _privateConstructorUsedError;
  IosOptions get iosOptions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PayFortOptionsCopyWith<PayFortOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayFortOptionsCopyWith<$Res> {
  factory $PayFortOptionsCopyWith(
          PayFortOptions value, $Res Function(PayFortOptions) then) =
      _$PayFortOptionsCopyWithImpl<$Res, PayFortOptions>;
  @useResult
  $Res call(
      {FortEnvironment environment,
      AndroidOptions androidOptions,
      IosOptions iosOptions});

  $AndroidOptionsCopyWith<$Res> get androidOptions;
  $IosOptionsCopyWith<$Res> get iosOptions;
}

/// @nodoc
class _$PayFortOptionsCopyWithImpl<$Res, $Val extends PayFortOptions>
    implements $PayFortOptionsCopyWith<$Res> {
  _$PayFortOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? environment = null,
    Object? androidOptions = null,
    Object? iosOptions = null,
  }) {
    return _then(_value.copyWith(
      environment: null == environment
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as FortEnvironment,
      androidOptions: null == androidOptions
          ? _value.androidOptions
          : androidOptions // ignore: cast_nullable_to_non_nullable
              as AndroidOptions,
      iosOptions: null == iosOptions
          ? _value.iosOptions
          : iosOptions // ignore: cast_nullable_to_non_nullable
              as IosOptions,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AndroidOptionsCopyWith<$Res> get androidOptions {
    return $AndroidOptionsCopyWith<$Res>(_value.androidOptions, (value) {
      return _then(_value.copyWith(androidOptions: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IosOptionsCopyWith<$Res> get iosOptions {
    return $IosOptionsCopyWith<$Res>(_value.iosOptions, (value) {
      return _then(_value.copyWith(iosOptions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PayFortOptionsCopyWith<$Res>
    implements $PayFortOptionsCopyWith<$Res> {
  factory _$$_PayFortOptionsCopyWith(
          _$_PayFortOptions value, $Res Function(_$_PayFortOptions) then) =
      __$$_PayFortOptionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FortEnvironment environment,
      AndroidOptions androidOptions,
      IosOptions iosOptions});

  @override
  $AndroidOptionsCopyWith<$Res> get androidOptions;
  @override
  $IosOptionsCopyWith<$Res> get iosOptions;
}

/// @nodoc
class __$$_PayFortOptionsCopyWithImpl<$Res>
    extends _$PayFortOptionsCopyWithImpl<$Res, _$_PayFortOptions>
    implements _$$_PayFortOptionsCopyWith<$Res> {
  __$$_PayFortOptionsCopyWithImpl(
      _$_PayFortOptions _value, $Res Function(_$_PayFortOptions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? environment = null,
    Object? androidOptions = null,
    Object? iosOptions = null,
  }) {
    return _then(_$_PayFortOptions(
      environment: null == environment
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as FortEnvironment,
      androidOptions: null == androidOptions
          ? _value.androidOptions
          : androidOptions // ignore: cast_nullable_to_non_nullable
              as AndroidOptions,
      iosOptions: null == iosOptions
          ? _value.iosOptions
          : iosOptions // ignore: cast_nullable_to_non_nullable
              as IosOptions,
    ));
  }
}

/// @nodoc

class _$_PayFortOptions extends _PayFortOptions {
  const _$_PayFortOptions(
      {required this.environment,
      this.androidOptions = _defaultAndroidOptions,
      this.iosOptions = _defaultIOSOptions})
      : super._();

  @override
  final FortEnvironment environment;
  @override
  @JsonKey()
  final AndroidOptions androidOptions;
  @override
  @JsonKey()
  final IosOptions iosOptions;

  @override
  String toString() {
    return 'PayFortOptions(environment: $environment, androidOptions: $androidOptions, iosOptions: $iosOptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PayFortOptions &&
            (identical(other.environment, environment) ||
                other.environment == environment) &&
            (identical(other.androidOptions, androidOptions) ||
                other.androidOptions == androidOptions) &&
            (identical(other.iosOptions, iosOptions) ||
                other.iosOptions == iosOptions));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, environment, androidOptions, iosOptions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PayFortOptionsCopyWith<_$_PayFortOptions> get copyWith =>
      __$$_PayFortOptionsCopyWithImpl<_$_PayFortOptions>(this, _$identity);
}

abstract class _PayFortOptions extends PayFortOptions {
  const factory _PayFortOptions(
      {required final FortEnvironment environment,
      final AndroidOptions androidOptions,
      final IosOptions iosOptions}) = _$_PayFortOptions;
  const _PayFortOptions._() : super._();

  @override
  FortEnvironment get environment;
  @override
  AndroidOptions get androidOptions;
  @override
  IosOptions get iosOptions;
  @override
  @JsonKey(ignore: true)
  _$$_PayFortOptionsCopyWith<_$_PayFortOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AndroidOptions {
  bool get isShowResponsePage => throw _privateConstructorUsedError;
  bool get showLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AndroidOptionsCopyWith<AndroidOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AndroidOptionsCopyWith<$Res> {
  factory $AndroidOptionsCopyWith(
          AndroidOptions value, $Res Function(AndroidOptions) then) =
      _$AndroidOptionsCopyWithImpl<$Res, AndroidOptions>;
  @useResult
  $Res call({bool isShowResponsePage, bool showLoading});
}

/// @nodoc
class _$AndroidOptionsCopyWithImpl<$Res, $Val extends AndroidOptions>
    implements $AndroidOptionsCopyWith<$Res> {
  _$AndroidOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isShowResponsePage = null,
    Object? showLoading = null,
  }) {
    return _then(_value.copyWith(
      isShowResponsePage: null == isShowResponsePage
          ? _value.isShowResponsePage
          : isShowResponsePage // ignore: cast_nullable_to_non_nullable
              as bool,
      showLoading: null == showLoading
          ? _value.showLoading
          : showLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AndroidOptionsCopyWith<$Res>
    implements $AndroidOptionsCopyWith<$Res> {
  factory _$$_AndroidOptionsCopyWith(
          _$_AndroidOptions value, $Res Function(_$_AndroidOptions) then) =
      __$$_AndroidOptionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isShowResponsePage, bool showLoading});
}

/// @nodoc
class __$$_AndroidOptionsCopyWithImpl<$Res>
    extends _$AndroidOptionsCopyWithImpl<$Res, _$_AndroidOptions>
    implements _$$_AndroidOptionsCopyWith<$Res> {
  __$$_AndroidOptionsCopyWithImpl(
      _$_AndroidOptions _value, $Res Function(_$_AndroidOptions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isShowResponsePage = null,
    Object? showLoading = null,
  }) {
    return _then(_$_AndroidOptions(
      isShowResponsePage: null == isShowResponsePage
          ? _value.isShowResponsePage
          : isShowResponsePage // ignore: cast_nullable_to_non_nullable
              as bool,
      showLoading: null == showLoading
          ? _value.showLoading
          : showLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AndroidOptions implements _AndroidOptions {
  const _$_AndroidOptions(
      {this.isShowResponsePage = true, this.showLoading = true});

  @override
  @JsonKey()
  final bool isShowResponsePage;
  @override
  @JsonKey()
  final bool showLoading;

  @override
  String toString() {
    return 'AndroidOptions(isShowResponsePage: $isShowResponsePage, showLoading: $showLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AndroidOptions &&
            (identical(other.isShowResponsePage, isShowResponsePage) ||
                other.isShowResponsePage == isShowResponsePage) &&
            (identical(other.showLoading, showLoading) ||
                other.showLoading == showLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isShowResponsePage, showLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AndroidOptionsCopyWith<_$_AndroidOptions> get copyWith =>
      __$$_AndroidOptionsCopyWithImpl<_$_AndroidOptions>(this, _$identity);
}

abstract class _AndroidOptions implements AndroidOptions {
  const factory _AndroidOptions(
      {final bool isShowResponsePage,
      final bool showLoading}) = _$_AndroidOptions;

  @override
  bool get isShowResponsePage;
  @override
  bool get showLoading;
  @override
  @JsonKey(ignore: true)
  _$$_AndroidOptionsCopyWith<_$_AndroidOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$IosOptions {
  bool get hideLoading => throw _privateConstructorUsedError;
  bool get presentAsDefault => throw _privateConstructorUsedError;
  bool get isShowResponsePage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IosOptionsCopyWith<IosOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IosOptionsCopyWith<$Res> {
  factory $IosOptionsCopyWith(
          IosOptions value, $Res Function(IosOptions) then) =
      _$IosOptionsCopyWithImpl<$Res, IosOptions>;
  @useResult
  $Res call({bool hideLoading, bool presentAsDefault, bool isShowResponsePage});
}

/// @nodoc
class _$IosOptionsCopyWithImpl<$Res, $Val extends IosOptions>
    implements $IosOptionsCopyWith<$Res> {
  _$IosOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hideLoading = null,
    Object? presentAsDefault = null,
    Object? isShowResponsePage = null,
  }) {
    return _then(_value.copyWith(
      hideLoading: null == hideLoading
          ? _value.hideLoading
          : hideLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      presentAsDefault: null == presentAsDefault
          ? _value.presentAsDefault
          : presentAsDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowResponsePage: null == isShowResponsePage
          ? _value.isShowResponsePage
          : isShowResponsePage // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IosOptionsCopyWith<$Res>
    implements $IosOptionsCopyWith<$Res> {
  factory _$$_IosOptionsCopyWith(
          _$_IosOptions value, $Res Function(_$_IosOptions) then) =
      __$$_IosOptionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool hideLoading, bool presentAsDefault, bool isShowResponsePage});
}

/// @nodoc
class __$$_IosOptionsCopyWithImpl<$Res>
    extends _$IosOptionsCopyWithImpl<$Res, _$_IosOptions>
    implements _$$_IosOptionsCopyWith<$Res> {
  __$$_IosOptionsCopyWithImpl(
      _$_IosOptions _value, $Res Function(_$_IosOptions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hideLoading = null,
    Object? presentAsDefault = null,
    Object? isShowResponsePage = null,
  }) {
    return _then(_$_IosOptions(
      hideLoading: null == hideLoading
          ? _value.hideLoading
          : hideLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      presentAsDefault: null == presentAsDefault
          ? _value.presentAsDefault
          : presentAsDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowResponsePage: null == isShowResponsePage
          ? _value.isShowResponsePage
          : isShowResponsePage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_IosOptions implements _IosOptions {
  const _$_IosOptions(
      {this.hideLoading = false,
      this.presentAsDefault = true,
      this.isShowResponsePage = true});

  @override
  @JsonKey()
  final bool hideLoading;
  @override
  @JsonKey()
  final bool presentAsDefault;
  @override
  @JsonKey()
  final bool isShowResponsePage;

  @override
  String toString() {
    return 'IosOptions(hideLoading: $hideLoading, presentAsDefault: $presentAsDefault, isShowResponsePage: $isShowResponsePage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IosOptions &&
            (identical(other.hideLoading, hideLoading) ||
                other.hideLoading == hideLoading) &&
            (identical(other.presentAsDefault, presentAsDefault) ||
                other.presentAsDefault == presentAsDefault) &&
            (identical(other.isShowResponsePage, isShowResponsePage) ||
                other.isShowResponsePage == isShowResponsePage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, hideLoading, presentAsDefault, isShowResponsePage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IosOptionsCopyWith<_$_IosOptions> get copyWith =>
      __$$_IosOptionsCopyWithImpl<_$_IosOptions>(this, _$identity);
}

abstract class _IosOptions implements IosOptions {
  const factory _IosOptions(
      {final bool hideLoading,
      final bool presentAsDefault,
      final bool isShowResponsePage}) = _$_IosOptions;

  @override
  bool get hideLoading;
  @override
  bool get presentAsDefault;
  @override
  bool get isShowResponsePage;
  @override
  @JsonKey(ignore: true)
  _$$_IosOptionsCopyWith<_$_IosOptions> get copyWith =>
      throw _privateConstructorUsedError;
}
