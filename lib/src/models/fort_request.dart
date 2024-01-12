class FortRequest {
  /// The transaction’s amount.
  /// Each currency has predefined allowed decimal points that should be taken into consideration when sending the amount.
  ///
  final num amount;

  /// The customer’s name.
  ///
  final String customerName;

  /// The customer’s email. Example: customer1@domain.com
  ///
  final String customerEmail;

  /// A description of the order.
  ///
  final String orderDescription;

  /// An SDK Token to enable using the Amazon Payment Services Mobile SDK.
  ///
  final String sdkToken;

  /// It holds the customer’s IP address.
  /// It’s Mandatory, if the fraud service is active.
  /// We support IPv4 and IPv6 as shown in the example below.
  ///
  final String customerIp;

  /// The currency of the transaction’s amount in ISO code 3. Example: AED, USD, EUR, GBP.
  /// By Default currency : [USD].
  ///
  final String currency;

  /// The checkout page and messages language.
  /// By default language: [en].
  ///
  final String language;

  /// The Merchant’s unique order number.
  ///
  final String merchantReference;

  /// The Token received from the Tokenization process..
  ///
  final String? tokenName;

  /// Payment option. [MASTERCARD], [VISA], [AMEX] etc...
  ///
  final String? paymentOption;

  /// The E-commerce indicator. example: [ECOMMERCE].
  ///
  final String? eci;

  /// The customer’s phone number.
  ///
  final String? phoneNumber;

  FortRequest({
    required this.amount,
    required this.customerName,
    required this.customerEmail,
    required this.orderDescription,
    required this.sdkToken,
    required this.customerIp,
    required this.merchantReference,
    this.currency = 'USD',
    this.language = 'en',
    this.tokenName,
    this.paymentOption,
    this.eci,
    this.phoneNumber,
  });

  FortRequest copyWith({
    num? amount,
    String? customerName,
    String? customerEmail,
    String? orderDescription,
    String? sdkToken,
    String? customerIp,
    String? currency,
    String? language,
    String? merchantReference,
    String? tokenName,
    String? paymentOption,
    String? eci,
    String? phoneNumber,
  }) {
    return FortRequest(
      amount: amount ?? this.amount,
      customerName: customerName ?? this.customerName,
      customerEmail: customerEmail ?? this.customerEmail,
      orderDescription: orderDescription ?? this.orderDescription,
      sdkToken: sdkToken ?? this.sdkToken,
      customerIp: customerIp ?? this.customerIp,
      currency: currency ?? this.currency,
      language: language ?? this.language,
      merchantReference: merchantReference ?? this.merchantReference,
      tokenName: tokenName ?? this.tokenName,
      paymentOption: paymentOption ?? this.paymentOption,
      eci: eci ?? this.eci,
      phoneNumber: phoneNumber ?? this.phoneNumber,
    );
  }

  Map<String, dynamic> asMap() {
    return <String, dynamic>{
      'amount': '$amount',
      'customer_name': customerName,
      'customer_email': customerEmail,
      'order_description': orderDescription,
      'sdk_token': sdkToken,
      'customer_ip': customerIp,
      'currency': currency,
      'language': language,
      'merchant_reference': merchantReference,
      'token_name': tokenName,
      'payment_option': paymentOption,
      'eci': eci,
      'phone_number': phoneNumber,
    };
  }
}
