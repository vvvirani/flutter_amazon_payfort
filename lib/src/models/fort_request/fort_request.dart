import 'package:amazon_payfort/src/models/converter/string_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fort_request.freezed.dart';
part 'fort_request.g.dart';

@freezed
class FortRequest with _$FortRequest {
  const FortRequest._();

  const factory FortRequest({
    /// The transaction’s amount.
    /// Each currency has predefined allowed decimal points that should be taken into consideration when sending the amount.
    ///
    @NumOrStringConverter() required num amount,

    /// The customer’s name.
    ///
    @JsonKey(name: 'customer_name') required String customerName,

    /// The customer’s email. Example: customer1@domain.com
    ///
    @JsonKey(name: 'customer_email') required String customerEmail,

    /// A description of the order.
    ///
    @JsonKey(name: 'order_description') required String orderDescription,

    /// An SDK Token to enable using the Amazon Payment Services Mobile SDK.
    ///
    @JsonKey(name: 'sdk_token') required String sdkToken,

    /// It holds the customer’s IP address.
    /// It’s Mandatory, if the fraud service is active.
    /// We support IPv4 and IPv6 as shown in the example below.
    ///
    @JsonKey(name: 'customer_ip') required String customerIp,

    /// The currency of the transaction’s amount in ISO code 3. Example: AED, USD, EUR, GBP.
    /// By Default currency : [USD].
    ///
    @Default('USD') String currency,

    /// The checkout page and messages language.
    /// By default language: [en].
    ///
    @Default('en') String language,

    /// The Merchant’s unique order number.
    ///
    @JsonKey(name: 'merchant_reference') required String merchantReference,

    /// The Token received from the Tokenization process..
    ///
    @JsonKey(name: 'token_name') String? tokenName,

    /// Payment option. [MASTERCARD], [VISA], [AMEX] etc...
    ///
    @JsonKey(name: 'payment_option') String? paymentOption,

    /// The E-commerce indicator. example: [ECOMMERCE]
    ///
    String? eci,

    /// The customer’s phone number.
    ///
    @JsonKey(name: 'phone_number') String? phoneNumber,
  }) = _FortRequest;

  factory FortRequest.fromJson(Map<String, dynamic> json) =>
      _$FortRequestFromJson(json);
}
