// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pay_fort_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PayFortResult _$PayFortResultFromJson(Map<String, dynamic> json) {
  return _PayFortResult.fromJson(json);
}

/// @nodoc
mixin _$PayFortResult {
  /// Response Code carries the value of our system’s response. *The code consists of five digits,
  /// the first 2 digits represent the response status [https://paymentservices-reference.payfort.com/docs/api/build/index.html?java#statuses],
  /// and the last 3 digits represent the response messages [https://paymentservices-reference.payfort.com/docs/api/build/index.html?java#messages].
  ///
  @JsonKey(name: 'response_code')
  String? get responseCode => throw _privateConstructorUsedError;

  /// The message description of the response code; it returns according to the request language..
  ///
  @JsonKey(name: 'response_message')
  String? get responseMessage => throw _privateConstructorUsedError;

  /// Command
  ///
  String? get command => throw _privateConstructorUsedError;

  /// The Merchant’s unique order number.
  ///
  @JsonKey(name: 'merchant_reference')
  String? get merchantReference => throw _privateConstructorUsedError;

  /// The transaction’s amount.
  /// Each currency has predefined allowed decimal points that should be taken into consideration when sending the amount.
  ///
  String? get amount => throw _privateConstructorUsedError;

  /// The currency of the transaction’s amount in ISO code 3.
  ///
  String? get currency => throw _privateConstructorUsedError;

  /// The order’s unique reference returned by Amazon Payfort system.
  ///
  @JsonKey(name: 'fort_id')
  String? get fortId => throw _privateConstructorUsedError;

  /// The customer’s email.
  ///
  @JsonKey(name: 'customer_email')
  String? get customerEmail => throw _privateConstructorUsedError;

  /// An SDK Token to enable using the Amazon Payment Services Mobile SDK.
  ///
  @JsonKey(name: 'sdk_token')
  String? get sdkToken => throw _privateConstructorUsedError;

  /// The Token received from the Tokenization process.
  ///
  @JsonKey(name: 'token_name')
  String? get tokenName => throw _privateConstructorUsedError;

  /// Payment option. [MASTERCARD], [VISA], [AMEX] etc...
  ///
  @JsonKey(name: 'payment_option')
  String? get paymentOption => throw _privateConstructorUsedError;

  /// The E-commerce indicator.
  ///
  String? get eci => throw _privateConstructorUsedError;

  /// The authorization code returned from the 3rd party.
  ///
  @JsonKey(name: 'authorization_code')
  String? get authorizationCode => throw _privateConstructorUsedError;

  /// It holds the description of the order.
  ///
  @JsonKey(name: 'order_description')
  String? get orderDescription => throw _privateConstructorUsedError;

  /// It holds the customer’s IP address.
  ///
  @JsonKey(name: 'customer_ip')
  String? get customerIp => throw _privateConstructorUsedError;

  /// The customer’s name.
  ///
  @JsonKey(name: 'customer_name')
  String? get customerName => throw _privateConstructorUsedError;

  /// The card’s expiry date.
  ///
  @JsonKey(name: 'expiry_date')
  String? get expiryDate => throw _privateConstructorUsedError;

  /// The masked credit card’s number. Only the [MEEZA] payment option takes 19 digits card number.
  ///
  @JsonKey(name: 'card_number')
  String? get cardNumber => throw _privateConstructorUsedError;

  /// A two-digit numeric value that indicates the status of the transaction.
  ///
  String? get status => throw _privateConstructorUsedError;

  /// The customer’s phone number.
  ///
  String? get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayFortResultCopyWith<PayFortResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayFortResultCopyWith<$Res> {
  factory $PayFortResultCopyWith(
          PayFortResult value, $Res Function(PayFortResult) then) =
      _$PayFortResultCopyWithImpl<$Res, PayFortResult>;
  @useResult
  $Res call(
      {@JsonKey(name: 'response_code') String? responseCode,
      @JsonKey(name: 'response_message') String? responseMessage,
      String? command,
      @JsonKey(name: 'merchant_reference') String? merchantReference,
      String? amount,
      String? currency,
      @JsonKey(name: 'fort_id') String? fortId,
      @JsonKey(name: 'customer_email') String? customerEmail,
      @JsonKey(name: 'sdk_token') String? sdkToken,
      @JsonKey(name: 'token_name') String? tokenName,
      @JsonKey(name: 'payment_option') String? paymentOption,
      String? eci,
      @JsonKey(name: 'authorization_code') String? authorizationCode,
      @JsonKey(name: 'order_description') String? orderDescription,
      @JsonKey(name: 'customer_ip') String? customerIp,
      @JsonKey(name: 'customer_name') String? customerName,
      @JsonKey(name: 'expiry_date') String? expiryDate,
      @JsonKey(name: 'card_number') String? cardNumber,
      String? status,
      String? phoneNumber});
}

/// @nodoc
class _$PayFortResultCopyWithImpl<$Res, $Val extends PayFortResult>
    implements $PayFortResultCopyWith<$Res> {
  _$PayFortResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseCode = freezed,
    Object? responseMessage = freezed,
    Object? command = freezed,
    Object? merchantReference = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? fortId = freezed,
    Object? customerEmail = freezed,
    Object? sdkToken = freezed,
    Object? tokenName = freezed,
    Object? paymentOption = freezed,
    Object? eci = freezed,
    Object? authorizationCode = freezed,
    Object? orderDescription = freezed,
    Object? customerIp = freezed,
    Object? customerName = freezed,
    Object? expiryDate = freezed,
    Object? cardNumber = freezed,
    Object? status = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      responseCode: freezed == responseCode
          ? _value.responseCode
          : responseCode // ignore: cast_nullable_to_non_nullable
              as String?,
      responseMessage: freezed == responseMessage
          ? _value.responseMessage
          : responseMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      command: freezed == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantReference: freezed == merchantReference
          ? _value.merchantReference
          : merchantReference // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      fortId: freezed == fortId
          ? _value.fortId
          : fortId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerEmail: freezed == customerEmail
          ? _value.customerEmail
          : customerEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      sdkToken: freezed == sdkToken
          ? _value.sdkToken
          : sdkToken // ignore: cast_nullable_to_non_nullable
              as String?,
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
      authorizationCode: freezed == authorizationCode
          ? _value.authorizationCode
          : authorizationCode // ignore: cast_nullable_to_non_nullable
              as String?,
      orderDescription: freezed == orderDescription
          ? _value.orderDescription
          : orderDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      customerIp: freezed == customerIp
          ? _value.customerIp
          : customerIp // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as String?,
      cardNumber: freezed == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PayFortResultCopyWith<$Res>
    implements $PayFortResultCopyWith<$Res> {
  factory _$$_PayFortResultCopyWith(
          _$_PayFortResult value, $Res Function(_$_PayFortResult) then) =
      __$$_PayFortResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'response_code') String? responseCode,
      @JsonKey(name: 'response_message') String? responseMessage,
      String? command,
      @JsonKey(name: 'merchant_reference') String? merchantReference,
      String? amount,
      String? currency,
      @JsonKey(name: 'fort_id') String? fortId,
      @JsonKey(name: 'customer_email') String? customerEmail,
      @JsonKey(name: 'sdk_token') String? sdkToken,
      @JsonKey(name: 'token_name') String? tokenName,
      @JsonKey(name: 'payment_option') String? paymentOption,
      String? eci,
      @JsonKey(name: 'authorization_code') String? authorizationCode,
      @JsonKey(name: 'order_description') String? orderDescription,
      @JsonKey(name: 'customer_ip') String? customerIp,
      @JsonKey(name: 'customer_name') String? customerName,
      @JsonKey(name: 'expiry_date') String? expiryDate,
      @JsonKey(name: 'card_number') String? cardNumber,
      String? status,
      String? phoneNumber});
}

/// @nodoc
class __$$_PayFortResultCopyWithImpl<$Res>
    extends _$PayFortResultCopyWithImpl<$Res, _$_PayFortResult>
    implements _$$_PayFortResultCopyWith<$Res> {
  __$$_PayFortResultCopyWithImpl(
      _$_PayFortResult _value, $Res Function(_$_PayFortResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseCode = freezed,
    Object? responseMessage = freezed,
    Object? command = freezed,
    Object? merchantReference = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? fortId = freezed,
    Object? customerEmail = freezed,
    Object? sdkToken = freezed,
    Object? tokenName = freezed,
    Object? paymentOption = freezed,
    Object? eci = freezed,
    Object? authorizationCode = freezed,
    Object? orderDescription = freezed,
    Object? customerIp = freezed,
    Object? customerName = freezed,
    Object? expiryDate = freezed,
    Object? cardNumber = freezed,
    Object? status = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$_PayFortResult(
      responseCode: freezed == responseCode
          ? _value.responseCode
          : responseCode // ignore: cast_nullable_to_non_nullable
              as String?,
      responseMessage: freezed == responseMessage
          ? _value.responseMessage
          : responseMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      command: freezed == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantReference: freezed == merchantReference
          ? _value.merchantReference
          : merchantReference // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      fortId: freezed == fortId
          ? _value.fortId
          : fortId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerEmail: freezed == customerEmail
          ? _value.customerEmail
          : customerEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      sdkToken: freezed == sdkToken
          ? _value.sdkToken
          : sdkToken // ignore: cast_nullable_to_non_nullable
              as String?,
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
      authorizationCode: freezed == authorizationCode
          ? _value.authorizationCode
          : authorizationCode // ignore: cast_nullable_to_non_nullable
              as String?,
      orderDescription: freezed == orderDescription
          ? _value.orderDescription
          : orderDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      customerIp: freezed == customerIp
          ? _value.customerIp
          : customerIp // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as String?,
      cardNumber: freezed == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
class _$_PayFortResult extends _PayFortResult {
  const _$_PayFortResult(
      {@JsonKey(name: 'response_code') this.responseCode,
      @JsonKey(name: 'response_message') this.responseMessage,
      this.command,
      @JsonKey(name: 'merchant_reference') this.merchantReference,
      this.amount,
      this.currency,
      @JsonKey(name: 'fort_id') this.fortId,
      @JsonKey(name: 'customer_email') this.customerEmail,
      @JsonKey(name: 'sdk_token') this.sdkToken,
      @JsonKey(name: 'token_name') this.tokenName,
      @JsonKey(name: 'payment_option') this.paymentOption,
      this.eci,
      @JsonKey(name: 'authorization_code') this.authorizationCode,
      @JsonKey(name: 'order_description') this.orderDescription,
      @JsonKey(name: 'customer_ip') this.customerIp,
      @JsonKey(name: 'customer_name') this.customerName,
      @JsonKey(name: 'expiry_date') this.expiryDate,
      @JsonKey(name: 'card_number') this.cardNumber,
      this.status,
      this.phoneNumber})
      : super._();

  factory _$_PayFortResult.fromJson(Map<String, dynamic> json) =>
      _$$_PayFortResultFromJson(json);

  /// Response Code carries the value of our system’s response. *The code consists of five digits,
  /// the first 2 digits represent the response status [https://paymentservices-reference.payfort.com/docs/api/build/index.html?java#statuses],
  /// and the last 3 digits represent the response messages [https://paymentservices-reference.payfort.com/docs/api/build/index.html?java#messages].
  ///
  @override
  @JsonKey(name: 'response_code')
  final String? responseCode;

  /// The message description of the response code; it returns according to the request language..
  ///
  @override
  @JsonKey(name: 'response_message')
  final String? responseMessage;

  /// Command
  ///
  @override
  final String? command;

  /// The Merchant’s unique order number.
  ///
  @override
  @JsonKey(name: 'merchant_reference')
  final String? merchantReference;

  /// The transaction’s amount.
  /// Each currency has predefined allowed decimal points that should be taken into consideration when sending the amount.
  ///
  @override
  final String? amount;

  /// The currency of the transaction’s amount in ISO code 3.
  ///
  @override
  final String? currency;

  /// The order’s unique reference returned by Amazon Payfort system.
  ///
  @override
  @JsonKey(name: 'fort_id')
  final String? fortId;

  /// The customer’s email.
  ///
  @override
  @JsonKey(name: 'customer_email')
  final String? customerEmail;

  /// An SDK Token to enable using the Amazon Payment Services Mobile SDK.
  ///
  @override
  @JsonKey(name: 'sdk_token')
  final String? sdkToken;

  /// The Token received from the Tokenization process.
  ///
  @override
  @JsonKey(name: 'token_name')
  final String? tokenName;

  /// Payment option. [MASTERCARD], [VISA], [AMEX] etc...
  ///
  @override
  @JsonKey(name: 'payment_option')
  final String? paymentOption;

  /// The E-commerce indicator.
  ///
  @override
  final String? eci;

  /// The authorization code returned from the 3rd party.
  ///
  @override
  @JsonKey(name: 'authorization_code')
  final String? authorizationCode;

  /// It holds the description of the order.
  ///
  @override
  @JsonKey(name: 'order_description')
  final String? orderDescription;

  /// It holds the customer’s IP address.
  ///
  @override
  @JsonKey(name: 'customer_ip')
  final String? customerIp;

  /// The customer’s name.
  ///
  @override
  @JsonKey(name: 'customer_name')
  final String? customerName;

  /// The card’s expiry date.
  ///
  @override
  @JsonKey(name: 'expiry_date')
  final String? expiryDate;

  /// The masked credit card’s number. Only the [MEEZA] payment option takes 19 digits card number.
  ///
  @override
  @JsonKey(name: 'card_number')
  final String? cardNumber;

  /// A two-digit numeric value that indicates the status of the transaction.
  ///
  @override
  final String? status;

  /// The customer’s phone number.
  ///
  @override
  final String? phoneNumber;

  @override
  String toString() {
    return 'PayFortResult(responseCode: $responseCode, responseMessage: $responseMessage, command: $command, merchantReference: $merchantReference, amount: $amount, currency: $currency, fortId: $fortId, customerEmail: $customerEmail, sdkToken: $sdkToken, tokenName: $tokenName, paymentOption: $paymentOption, eci: $eci, authorizationCode: $authorizationCode, orderDescription: $orderDescription, customerIp: $customerIp, customerName: $customerName, expiryDate: $expiryDate, cardNumber: $cardNumber, status: $status, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PayFortResult &&
            (identical(other.responseCode, responseCode) ||
                other.responseCode == responseCode) &&
            (identical(other.responseMessage, responseMessage) ||
                other.responseMessage == responseMessage) &&
            (identical(other.command, command) || other.command == command) &&
            (identical(other.merchantReference, merchantReference) ||
                other.merchantReference == merchantReference) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.fortId, fortId) || other.fortId == fortId) &&
            (identical(other.customerEmail, customerEmail) ||
                other.customerEmail == customerEmail) &&
            (identical(other.sdkToken, sdkToken) ||
                other.sdkToken == sdkToken) &&
            (identical(other.tokenName, tokenName) ||
                other.tokenName == tokenName) &&
            (identical(other.paymentOption, paymentOption) ||
                other.paymentOption == paymentOption) &&
            (identical(other.eci, eci) || other.eci == eci) &&
            (identical(other.authorizationCode, authorizationCode) ||
                other.authorizationCode == authorizationCode) &&
            (identical(other.orderDescription, orderDescription) ||
                other.orderDescription == orderDescription) &&
            (identical(other.customerIp, customerIp) ||
                other.customerIp == customerIp) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        responseCode,
        responseMessage,
        command,
        merchantReference,
        amount,
        currency,
        fortId,
        customerEmail,
        sdkToken,
        tokenName,
        paymentOption,
        eci,
        authorizationCode,
        orderDescription,
        customerIp,
        customerName,
        expiryDate,
        cardNumber,
        status,
        phoneNumber
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PayFortResultCopyWith<_$_PayFortResult> get copyWith =>
      __$$_PayFortResultCopyWithImpl<_$_PayFortResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PayFortResultToJson(
      this,
    );
  }
}

abstract class _PayFortResult extends PayFortResult {
  const factory _PayFortResult(
      {@JsonKey(name: 'response_code') final String? responseCode,
      @JsonKey(name: 'response_message') final String? responseMessage,
      final String? command,
      @JsonKey(name: 'merchant_reference') final String? merchantReference,
      final String? amount,
      final String? currency,
      @JsonKey(name: 'fort_id') final String? fortId,
      @JsonKey(name: 'customer_email') final String? customerEmail,
      @JsonKey(name: 'sdk_token') final String? sdkToken,
      @JsonKey(name: 'token_name') final String? tokenName,
      @JsonKey(name: 'payment_option') final String? paymentOption,
      final String? eci,
      @JsonKey(name: 'authorization_code') final String? authorizationCode,
      @JsonKey(name: 'order_description') final String? orderDescription,
      @JsonKey(name: 'customer_ip') final String? customerIp,
      @JsonKey(name: 'customer_name') final String? customerName,
      @JsonKey(name: 'expiry_date') final String? expiryDate,
      @JsonKey(name: 'card_number') final String? cardNumber,
      final String? status,
      final String? phoneNumber}) = _$_PayFortResult;
  const _PayFortResult._() : super._();

  factory _PayFortResult.fromJson(Map<String, dynamic> json) =
      _$_PayFortResult.fromJson;

  @override

  /// Response Code carries the value of our system’s response. *The code consists of five digits,
  /// the first 2 digits represent the response status [https://paymentservices-reference.payfort.com/docs/api/build/index.html?java#statuses],
  /// and the last 3 digits represent the response messages [https://paymentservices-reference.payfort.com/docs/api/build/index.html?java#messages].
  ///
  @JsonKey(name: 'response_code')
  String? get responseCode;
  @override

  /// The message description of the response code; it returns according to the request language..
  ///
  @JsonKey(name: 'response_message')
  String? get responseMessage;
  @override

  /// Command
  ///
  String? get command;
  @override

  /// The Merchant’s unique order number.
  ///
  @JsonKey(name: 'merchant_reference')
  String? get merchantReference;
  @override

  /// The transaction’s amount.
  /// Each currency has predefined allowed decimal points that should be taken into consideration when sending the amount.
  ///
  String? get amount;
  @override

  /// The currency of the transaction’s amount in ISO code 3.
  ///
  String? get currency;
  @override

  /// The order’s unique reference returned by Amazon Payfort system.
  ///
  @JsonKey(name: 'fort_id')
  String? get fortId;
  @override

  /// The customer’s email.
  ///
  @JsonKey(name: 'customer_email')
  String? get customerEmail;
  @override

  /// An SDK Token to enable using the Amazon Payment Services Mobile SDK.
  ///
  @JsonKey(name: 'sdk_token')
  String? get sdkToken;
  @override

  /// The Token received from the Tokenization process.
  ///
  @JsonKey(name: 'token_name')
  String? get tokenName;
  @override

  /// Payment option. [MASTERCARD], [VISA], [AMEX] etc...
  ///
  @JsonKey(name: 'payment_option')
  String? get paymentOption;
  @override

  /// The E-commerce indicator.
  ///
  String? get eci;
  @override

  /// The authorization code returned from the 3rd party.
  ///
  @JsonKey(name: 'authorization_code')
  String? get authorizationCode;
  @override

  /// It holds the description of the order.
  ///
  @JsonKey(name: 'order_description')
  String? get orderDescription;
  @override

  /// It holds the customer’s IP address.
  ///
  @JsonKey(name: 'customer_ip')
  String? get customerIp;
  @override

  /// The customer’s name.
  ///
  @JsonKey(name: 'customer_name')
  String? get customerName;
  @override

  /// The card’s expiry date.
  ///
  @JsonKey(name: 'expiry_date')
  String? get expiryDate;
  @override

  /// The masked credit card’s number. Only the [MEEZA] payment option takes 19 digits card number.
  ///
  @JsonKey(name: 'card_number')
  String? get cardNumber;
  @override

  /// A two-digit numeric value that indicates the status of the transaction.
  ///
  String? get status;
  @override

  /// The customer’s phone number.
  ///
  String? get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$_PayFortResultCopyWith<_$_PayFortResult> get copyWith =>
      throw _privateConstructorUsedError;
}
