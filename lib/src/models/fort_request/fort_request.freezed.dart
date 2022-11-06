// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fort_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FortRequest _$FortRequestFromJson(Map<String, dynamic> json) {
  return _FortRequest.fromJson(json);
}

/// @nodoc
mixin _$FortRequest {
  /// The transaction’s amount.
  /// Each currency has predefined allowed decimal points that should be taken into consideration when sending the amount.
  ///
  @StringOrNumConverter()
  num get amount => throw _privateConstructorUsedError;

  /// The customer’s name.
  ///
  @JsonKey(name: 'customer_name')
  String get customerName => throw _privateConstructorUsedError;

  /// The customer’s email. Example: customer1@domain.com
  ///
  @JsonKey(name: 'customer_email')
  String get customerEmail => throw _privateConstructorUsedError;

  /// A description of the order.
  ///
  @JsonKey(name: 'order_description')
  String get orderDescription => throw _privateConstructorUsedError;

  /// An SDK Token to enable using the Amazon Payment Services Mobile SDK.
  ///
  @JsonKey(name: 'sdk_token')
  String get sdkToken => throw _privateConstructorUsedError;

  /// It holds the customer’s IP address.
  /// It’s Mandatory, if the fraud service is active.
  /// We support IPv4 and IPv6 as shown in the example below.
  ///
  @JsonKey(name: 'customer_ip')
  String get customerIp => throw _privateConstructorUsedError;

  /// The currency of the transaction’s amount in ISO code 3. Example: AED, USD, EUR, GBP.
  /// By Default currency : [USD].
  ///
  String get currency => throw _privateConstructorUsedError;

  /// The checkout page and messages language.
  /// By default language: [en].
  ///
  String get language => throw _privateConstructorUsedError;

  /// The Merchant’s unique order number.
  ///
  @JsonKey(name: 'merchant_reference')
  String get merchantReference => throw _privateConstructorUsedError;

  /// The Token received from the Tokenization process..
  ///
  @JsonKey(name: 'token_name')
  String? get tokenName => throw _privateConstructorUsedError;

  /// Payment option. [MASTERCARD], [VISA], [AMEX] etc...
  ///
  @JsonKey(name: 'payment_option')
  String? get paymentOption => throw _privateConstructorUsedError;

  /// The E-commerce indicator. example: [ECOMMERCE]
  ///
  String? get eci => throw _privateConstructorUsedError;

  /// The customer’s phone number.
  ///
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FortRequestCopyWith<FortRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FortRequestCopyWith<$Res> {
  factory $FortRequestCopyWith(
          FortRequest value, $Res Function(FortRequest) then) =
      _$FortRequestCopyWithImpl<$Res, FortRequest>;
  @useResult
  $Res call(
      {@StringOrNumConverter() num amount,
      @JsonKey(name: 'customer_name') String customerName,
      @JsonKey(name: 'customer_email') String customerEmail,
      @JsonKey(name: 'order_description') String orderDescription,
      @JsonKey(name: 'sdk_token') String sdkToken,
      @JsonKey(name: 'customer_ip') String customerIp,
      String currency,
      String language,
      @JsonKey(name: 'merchant_reference') String merchantReference,
      @JsonKey(name: 'token_name') String? tokenName,
      @JsonKey(name: 'payment_option') String? paymentOption,
      String? eci,
      @JsonKey(name: 'phone_number') String? phoneNumber});
}

/// @nodoc
class _$FortRequestCopyWithImpl<$Res, $Val extends FortRequest>
    implements $FortRequestCopyWith<$Res> {
  _$FortRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? customerName = null,
    Object? customerEmail = null,
    Object? orderDescription = null,
    Object? sdkToken = null,
    Object? customerIp = null,
    Object? currency = null,
    Object? language = null,
    Object? merchantReference = null,
    Object? tokenName = freezed,
    Object? paymentOption = freezed,
    Object? eci = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      customerEmail: null == customerEmail
          ? _value.customerEmail
          : customerEmail // ignore: cast_nullable_to_non_nullable
              as String,
      orderDescription: null == orderDescription
          ? _value.orderDescription
          : orderDescription // ignore: cast_nullable_to_non_nullable
              as String,
      sdkToken: null == sdkToken
          ? _value.sdkToken
          : sdkToken // ignore: cast_nullable_to_non_nullable
              as String,
      customerIp: null == customerIp
          ? _value.customerIp
          : customerIp // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      merchantReference: null == merchantReference
          ? _value.merchantReference
          : merchantReference // ignore: cast_nullable_to_non_nullable
              as String,
      tokenName: freezed == tokenName
          ? _value.tokenName
          : tokenName // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentOption: freezed == paymentOption
          ? _value.paymentOption
          : paymentOption // ignore: cast_nullable_to_non_nullable
              as String?,
      eci: freezed == eci
          ? _value.eci
          : eci // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FortRequestCopyWith<$Res>
    implements $FortRequestCopyWith<$Res> {
  factory _$$_FortRequestCopyWith(
          _$_FortRequest value, $Res Function(_$_FortRequest) then) =
      __$$_FortRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@StringOrNumConverter() num amount,
      @JsonKey(name: 'customer_name') String customerName,
      @JsonKey(name: 'customer_email') String customerEmail,
      @JsonKey(name: 'order_description') String orderDescription,
      @JsonKey(name: 'sdk_token') String sdkToken,
      @JsonKey(name: 'customer_ip') String customerIp,
      String currency,
      String language,
      @JsonKey(name: 'merchant_reference') String merchantReference,
      @JsonKey(name: 'token_name') String? tokenName,
      @JsonKey(name: 'payment_option') String? paymentOption,
      String? eci,
      @JsonKey(name: 'phone_number') String? phoneNumber});
}

/// @nodoc
class __$$_FortRequestCopyWithImpl<$Res>
    extends _$FortRequestCopyWithImpl<$Res, _$_FortRequest>
    implements _$$_FortRequestCopyWith<$Res> {
  __$$_FortRequestCopyWithImpl(
      _$_FortRequest _value, $Res Function(_$_FortRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? customerName = null,
    Object? customerEmail = null,
    Object? orderDescription = null,
    Object? sdkToken = null,
    Object? customerIp = null,
    Object? currency = null,
    Object? language = null,
    Object? merchantReference = null,
    Object? tokenName = freezed,
    Object? paymentOption = freezed,
    Object? eci = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$_FortRequest(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      customerEmail: null == customerEmail
          ? _value.customerEmail
          : customerEmail // ignore: cast_nullable_to_non_nullable
              as String,
      orderDescription: null == orderDescription
          ? _value.orderDescription
          : orderDescription // ignore: cast_nullable_to_non_nullable
              as String,
      sdkToken: null == sdkToken
          ? _value.sdkToken
          : sdkToken // ignore: cast_nullable_to_non_nullable
              as String,
      customerIp: null == customerIp
          ? _value.customerIp
          : customerIp // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      merchantReference: null == merchantReference
          ? _value.merchantReference
          : merchantReference // ignore: cast_nullable_to_non_nullable
              as String,
      tokenName: freezed == tokenName
          ? _value.tokenName
          : tokenName // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentOption: freezed == paymentOption
          ? _value.paymentOption
          : paymentOption // ignore: cast_nullable_to_non_nullable
              as String?,
      eci: freezed == eci
          ? _value.eci
          : eci // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FortRequest extends _FortRequest {
  const _$_FortRequest(
      {@StringOrNumConverter() required this.amount,
      @JsonKey(name: 'customer_name') required this.customerName,
      @JsonKey(name: 'customer_email') required this.customerEmail,
      @JsonKey(name: 'order_description') required this.orderDescription,
      @JsonKey(name: 'sdk_token') required this.sdkToken,
      @JsonKey(name: 'customer_ip') required this.customerIp,
      this.currency = 'USD',
      this.language = 'en',
      @JsonKey(name: 'merchant_reference') required this.merchantReference,
      @JsonKey(name: 'token_name') this.tokenName,
      @JsonKey(name: 'payment_option') this.paymentOption,
      this.eci,
      @JsonKey(name: 'phone_number') this.phoneNumber})
      : super._();

  factory _$_FortRequest.fromJson(Map<String, dynamic> json) =>
      _$$_FortRequestFromJson(json);

  /// The transaction’s amount.
  /// Each currency has predefined allowed decimal points that should be taken into consideration when sending the amount.
  ///
  @override
  @StringOrNumConverter()
  final num amount;

  /// The customer’s name.
  ///
  @override
  @JsonKey(name: 'customer_name')
  final String customerName;

  /// The customer’s email. Example: customer1@domain.com
  ///
  @override
  @JsonKey(name: 'customer_email')
  final String customerEmail;

  /// A description of the order.
  ///
  @override
  @JsonKey(name: 'order_description')
  final String orderDescription;

  /// An SDK Token to enable using the Amazon Payment Services Mobile SDK.
  ///
  @override
  @JsonKey(name: 'sdk_token')
  final String sdkToken;

  /// It holds the customer’s IP address.
  /// It’s Mandatory, if the fraud service is active.
  /// We support IPv4 and IPv6 as shown in the example below.
  ///
  @override
  @JsonKey(name: 'customer_ip')
  final String customerIp;

  /// The currency of the transaction’s amount in ISO code 3. Example: AED, USD, EUR, GBP.
  /// By Default currency : [USD].
  ///
  @override
  @JsonKey()
  final String currency;

  /// The checkout page and messages language.
  /// By default language: [en].
  ///
  @override
  @JsonKey()
  final String language;

  /// The Merchant’s unique order number.
  ///
  @override
  @JsonKey(name: 'merchant_reference')
  final String merchantReference;

  /// The Token received from the Tokenization process..
  ///
  @override
  @JsonKey(name: 'token_name')
  final String? tokenName;

  /// Payment option. [MASTERCARD], [VISA], [AMEX] etc...
  ///
  @override
  @JsonKey(name: 'payment_option')
  final String? paymentOption;

  /// The E-commerce indicator. example: [ECOMMERCE]
  ///
  @override
  final String? eci;

  /// The customer’s phone number.
  ///
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;

  @override
  String toString() {
    return 'FortRequest(amount: $amount, customerName: $customerName, customerEmail: $customerEmail, orderDescription: $orderDescription, sdkToken: $sdkToken, customerIp: $customerIp, currency: $currency, language: $language, merchantReference: $merchantReference, tokenName: $tokenName, paymentOption: $paymentOption, eci: $eci, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FortRequest &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerEmail, customerEmail) ||
                other.customerEmail == customerEmail) &&
            (identical(other.orderDescription, orderDescription) ||
                other.orderDescription == orderDescription) &&
            (identical(other.sdkToken, sdkToken) ||
                other.sdkToken == sdkToken) &&
            (identical(other.customerIp, customerIp) ||
                other.customerIp == customerIp) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.merchantReference, merchantReference) ||
                other.merchantReference == merchantReference) &&
            (identical(other.tokenName, tokenName) ||
                other.tokenName == tokenName) &&
            (identical(other.paymentOption, paymentOption) ||
                other.paymentOption == paymentOption) &&
            (identical(other.eci, eci) || other.eci == eci) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      amount,
      customerName,
      customerEmail,
      orderDescription,
      sdkToken,
      customerIp,
      currency,
      language,
      merchantReference,
      tokenName,
      paymentOption,
      eci,
      phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FortRequestCopyWith<_$_FortRequest> get copyWith =>
      __$$_FortRequestCopyWithImpl<_$_FortRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FortRequestToJson(
      this,
    );
  }
}

abstract class _FortRequest extends FortRequest {
  const factory _FortRequest(
      {@StringOrNumConverter()
          required final num amount,
      @JsonKey(name: 'customer_name')
          required final String customerName,
      @JsonKey(name: 'customer_email')
          required final String customerEmail,
      @JsonKey(name: 'order_description')
          required final String orderDescription,
      @JsonKey(name: 'sdk_token')
          required final String sdkToken,
      @JsonKey(name: 'customer_ip')
          required final String customerIp,
      final String currency,
      final String language,
      @JsonKey(name: 'merchant_reference')
          required final String merchantReference,
      @JsonKey(name: 'token_name')
          final String? tokenName,
      @JsonKey(name: 'payment_option')
          final String? paymentOption,
      final String? eci,
      @JsonKey(name: 'phone_number')
          final String? phoneNumber}) = _$_FortRequest;
  const _FortRequest._() : super._();

  factory _FortRequest.fromJson(Map<String, dynamic> json) =
      _$_FortRequest.fromJson;

  @override

  /// The transaction’s amount.
  /// Each currency has predefined allowed decimal points that should be taken into consideration when sending the amount.
  ///
  @StringOrNumConverter()
  num get amount;
  @override

  /// The customer’s name.
  ///
  @JsonKey(name: 'customer_name')
  String get customerName;
  @override

  /// The customer’s email. Example: customer1@domain.com
  ///
  @JsonKey(name: 'customer_email')
  String get customerEmail;
  @override

  /// A description of the order.
  ///
  @JsonKey(name: 'order_description')
  String get orderDescription;
  @override

  /// An SDK Token to enable using the Amazon Payment Services Mobile SDK.
  ///
  @JsonKey(name: 'sdk_token')
  String get sdkToken;
  @override

  /// It holds the customer’s IP address.
  /// It’s Mandatory, if the fraud service is active.
  /// We support IPv4 and IPv6 as shown in the example below.
  ///
  @JsonKey(name: 'customer_ip')
  String get customerIp;
  @override

  /// The currency of the transaction’s amount in ISO code 3. Example: AED, USD, EUR, GBP.
  /// By Default currency : [USD].
  ///
  String get currency;
  @override

  /// The checkout page and messages language.
  /// By default language: [en].
  ///
  String get language;
  @override

  /// The Merchant’s unique order number.
  ///
  @JsonKey(name: 'merchant_reference')
  String get merchantReference;
  @override

  /// The Token received from the Tokenization process..
  ///
  @JsonKey(name: 'token_name')
  String? get tokenName;
  @override

  /// Payment option. [MASTERCARD], [VISA], [AMEX] etc...
  ///
  @JsonKey(name: 'payment_option')
  String? get paymentOption;
  @override

  /// The E-commerce indicator. example: [ECOMMERCE]
  ///
  String? get eci;
  @override

  /// The customer’s phone number.
  ///
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$_FortRequestCopyWith<_$_FortRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
