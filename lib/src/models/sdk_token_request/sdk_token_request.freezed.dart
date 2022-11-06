// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sdk_token_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SdkTokenRequest {
  /// Alphanumeric access code.
  ///
  @JsonKey(name: 'access_code')
  String get accessCode => throw _privateConstructorUsedError;

  /// The ID of the Merchant.
  ///
  @JsonKey(name: 'merchant_identifier')
  String get merchantIdentifier => throw _privateConstructorUsedError;

  /// The checkout page and messages language.
  /// By default language is [en].
  ///
  String get language => throw _privateConstructorUsedError;

  /// A unique device identifier.
  ///
  @JsonKey(name: 'device_id')
  String get deviceId => throw _privateConstructorUsedError;

  /// A string hashed using the [Secure Hash Algorithm]. Please refer to section Signature.
  ///
  String? get signature => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SdkTokenRequestCopyWith<SdkTokenRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SdkTokenRequestCopyWith<$Res> {
  factory $SdkTokenRequestCopyWith(
          SdkTokenRequest value, $Res Function(SdkTokenRequest) then) =
      _$SdkTokenRequestCopyWithImpl<$Res, SdkTokenRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'access_code') String accessCode,
      @JsonKey(name: 'merchant_identifier') String merchantIdentifier,
      String language,
      @JsonKey(name: 'device_id') String deviceId,
      String? signature});
}

/// @nodoc
class _$SdkTokenRequestCopyWithImpl<$Res, $Val extends SdkTokenRequest>
    implements $SdkTokenRequestCopyWith<$Res> {
  _$SdkTokenRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessCode = null,
    Object? merchantIdentifier = null,
    Object? language = null,
    Object? deviceId = null,
    Object? signature = freezed,
  }) {
    return _then(_value.copyWith(
      accessCode: null == accessCode
          ? _value.accessCode
          : accessCode // ignore: cast_nullable_to_non_nullable
              as String,
      merchantIdentifier: null == merchantIdentifier
          ? _value.merchantIdentifier
          : merchantIdentifier // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      signature: freezed == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SdkTokenRequestCopyWith<$Res>
    implements $SdkTokenRequestCopyWith<$Res> {
  factory _$$_SdkTokenRequestCopyWith(
          _$_SdkTokenRequest value, $Res Function(_$_SdkTokenRequest) then) =
      __$$_SdkTokenRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'access_code') String accessCode,
      @JsonKey(name: 'merchant_identifier') String merchantIdentifier,
      String language,
      @JsonKey(name: 'device_id') String deviceId,
      String? signature});
}

/// @nodoc
class __$$_SdkTokenRequestCopyWithImpl<$Res>
    extends _$SdkTokenRequestCopyWithImpl<$Res, _$_SdkTokenRequest>
    implements _$$_SdkTokenRequestCopyWith<$Res> {
  __$$_SdkTokenRequestCopyWithImpl(
      _$_SdkTokenRequest _value, $Res Function(_$_SdkTokenRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessCode = null,
    Object? merchantIdentifier = null,
    Object? language = null,
    Object? deviceId = null,
    Object? signature = freezed,
  }) {
    return _then(_$_SdkTokenRequest(
      accessCode: null == accessCode
          ? _value.accessCode
          : accessCode // ignore: cast_nullable_to_non_nullable
              as String,
      merchantIdentifier: null == merchantIdentifier
          ? _value.merchantIdentifier
          : merchantIdentifier // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      signature: freezed == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SdkTokenRequest extends _SdkTokenRequest {
  const _$_SdkTokenRequest(
      {@JsonKey(name: 'access_code') required this.accessCode,
      @JsonKey(name: 'merchant_identifier') required this.merchantIdentifier,
      this.language = 'en',
      @JsonKey(name: 'device_id') required this.deviceId,
      this.signature})
      : super._();

  /// Alphanumeric access code.
  ///
  @override
  @JsonKey(name: 'access_code')
  final String accessCode;

  /// The ID of the Merchant.
  ///
  @override
  @JsonKey(name: 'merchant_identifier')
  final String merchantIdentifier;

  /// The checkout page and messages language.
  /// By default language is [en].
  ///
  @override
  @JsonKey()
  final String language;

  /// A unique device identifier.
  ///
  @override
  @JsonKey(name: 'device_id')
  final String deviceId;

  /// A string hashed using the [Secure Hash Algorithm]. Please refer to section Signature.
  ///
  @override
  final String? signature;

  @override
  String toString() {
    return 'SdkTokenRequest(accessCode: $accessCode, merchantIdentifier: $merchantIdentifier, language: $language, deviceId: $deviceId, signature: $signature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SdkTokenRequest &&
            (identical(other.accessCode, accessCode) ||
                other.accessCode == accessCode) &&
            (identical(other.merchantIdentifier, merchantIdentifier) ||
                other.merchantIdentifier == merchantIdentifier) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.signature, signature) ||
                other.signature == signature));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accessCode, merchantIdentifier,
      language, deviceId, signature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SdkTokenRequestCopyWith<_$_SdkTokenRequest> get copyWith =>
      __$$_SdkTokenRequestCopyWithImpl<_$_SdkTokenRequest>(this, _$identity);
}

abstract class _SdkTokenRequest extends SdkTokenRequest {
  const factory _SdkTokenRequest(
      {@JsonKey(name: 'access_code')
          required final String accessCode,
      @JsonKey(name: 'merchant_identifier')
          required final String merchantIdentifier,
      final String language,
      @JsonKey(name: 'device_id')
          required final String deviceId,
      final String? signature}) = _$_SdkTokenRequest;
  const _SdkTokenRequest._() : super._();

  @override

  /// Alphanumeric access code.
  ///
  @JsonKey(name: 'access_code')
  String get accessCode;
  @override

  /// The ID of the Merchant.
  ///
  @JsonKey(name: 'merchant_identifier')
  String get merchantIdentifier;
  @override

  /// The checkout page and messages language.
  /// By default language is [en].
  ///
  String get language;
  @override

  /// A unique device identifier.
  ///
  @JsonKey(name: 'device_id')
  String get deviceId;
  @override

  /// A string hashed using the [Secure Hash Algorithm]. Please refer to section Signature.
  ///
  String? get signature;
  @override
  @JsonKey(ignore: true)
  _$$_SdkTokenRequestCopyWith<_$_SdkTokenRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
