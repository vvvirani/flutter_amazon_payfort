import 'package:freezed_annotation/freezed_annotation.dart';

part 'pay_fort_result.freezed.dart';
part 'pay_fort_result.g.dart';

@freezed
class PayFortResult with _$PayFortResult {
  const PayFortResult._();

  const factory PayFortResult({
    /// Response Code carries the value of our system’s response. *The code consists of five digits,
    /// the first 2 digits represent the response status [https://paymentservices-reference.payfort.com/docs/api/build/index.html?java#statuses],
    /// and the last 3 digits represent the response messages [https://paymentservices-reference.payfort.com/docs/api/build/index.html?java#messages].
    ///
    @JsonKey(name: 'response_code') String? responseCode,

    /// The message description of the response code; it returns according to the request language..
    ///
    @JsonKey(name: 'response_message') String? responseMessage,

    /// Command
    ///
    String? command,

    /// The Merchant’s unique order number.
    ///
    @JsonKey(name: 'merchant_reference') String? merchantReference,

    /// The transaction’s amount.
    /// Each currency has predefined allowed decimal points that should be taken into consideration when sending the amount.
    ///
    String? amount,

    /// The currency of the transaction’s amount in ISO code 3.
    ///
    String? currency,

    /// The order’s unique reference returned by Amazon Payfort system.
    ///
    @JsonKey(name: 'fort_id') String? fortId,

    /// The customer’s email.
    ///
    @JsonKey(name: 'customer_email') String? customerEmail,

    /// An SDK Token to enable using the Amazon Payment Services Mobile SDK.
    ///
    @JsonKey(name: 'sdk_token') String? sdkToken,

    /// The Token received from the Tokenization process.
    ///
    @JsonKey(name: 'token_name') String? tokenName,

    /// Payment option. [MASTERCARD], [VISA], [AMEX] etc...
    ///
    @JsonKey(name: 'payment_option') String? paymentOption,

    /// The E-commerce indicator.
    ///
    String? eci,

    /// The authorization code returned from the 3rd party.
    ///
    @JsonKey(name: 'authorization_code') String? authorizationCode,

    /// It holds the description of the order.
    ///
    @JsonKey(name: 'order_description') String? orderDescription,

    /// It holds the customer’s IP address.
    ///
    @JsonKey(name: 'customer_ip') String? customerIp,

    /// The customer’s name.
    ///
    @JsonKey(name: 'customer_name') String? customerName,

    /// The card’s expiry date.
    ///
    @JsonKey(name: 'expiry_date') String? expiryDate,

    /// The masked credit card’s number. Only the [MEEZA] payment option takes 19 digits card number.
    ///
    @JsonKey(name: 'card_number') String? cardNumber,

    /// A two-digit numeric value that indicates the status of the transaction.
    ///
    String? status,

    /// The customer’s phone number.
    ///
    String? phoneNumber,
  }) = _PayFortResult;

  factory PayFortResult.fromJson(Map<String, dynamic> json) =>
      _$PayFortResultFromJson(json);
}
